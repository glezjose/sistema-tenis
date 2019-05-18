

% declaracion de librerias

:-use_module(library(pce)).
:-use_module(library(pce_style_item)).
:-consult('hechos.pl').
:-pce_image_directory('./img').


resource(logo,image,image('logo.jpg')).
resource(logo2,image,image('logo2.jpg')).
resource(logo3,image,image('xpert1.jpg')).
resource(logo4,image,image('xpert2.jpg')).
resource(logo5,image,image('xpert3.jpg')).







% --------------------------PARA EL MENU PRINCIPAL------------------------------------
test:-
    new(D, dialog),
    new(W,  window('Sistema Experto de Tenis', size(750, 300))),
    new(Imagen,label(icon,resource(logo))),

    new(BtnIni,button('Iniciar Consulta',and(message(@prolog,ventanaTest),message(W, destroy)))),


    new(BtnAdqui,button('Modulo de Adquisicion',and(message(@prolog,ventanaAdqui),message(W, destroy)))),
    new(BtnSalir,button('Salir',and(message(@prolog, solve, D, 10, 20),message(W, destroy)))),
    
    send(D, below, W),
send(W,display,Imagen,point(45,0)),
    send_list(D,append,[BtnIni,BtnAdqui,BtnSalir]),
    send(D, open_centered),
    !.

solve(D, Row, Column) :-
  writeln(solve(D, Row, Column)).
% ---------------------------------------------------------------------------------------





% --------------------------PARA LA VENTANA CUESTIONARIO--------------------------------- 


ventanaTest:-
new(D, dialog),
    new(W,  window('Cuestionario', size(750, 500))),
    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(Imagen2,label(icon,resource(logo2))),
new(T,label(nombre,'Eliga las opciones que mas se adecue a los tenis que requiere:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),



	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,['$500-$1499','$1500-$2499','$2500 o Mas']),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,['Hombre','Mujer','Nino']),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,['Piel','Sintetico','Otro']),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,['Low(Bajo)','Mid(Medio)','High(Alto)']),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,['Deportivos','Casuales']),

    	        
    	send(D, below, W),
	
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)), 



 	send(W,display,Imagen2,point(420,0)),
	new(BtnAceptar,button('Continuar',and(message(@prolog,veriTipoTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection), message(W, destroy)))),


    	
send(D,display,BtnAceptar,point(350,10)),

    	send(D, open_centered),
    	!.


% ----------------------------------------------------------------------------------------


% --------------------------PARA LA VENTANA ADQUISICION---------------------------------

ventanaAdqui:-


new(D, dialog),
    new(W,  window('Modulo de Adquisicion', size(750, 500))),
    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(Imagen3,label(icon,resource(logo3))),
new(T,label(nombre,'Eliga entre las opciones la configuracion del tenis que desee:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),



	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,['$500-$1499','$1500-$2499','$2500 o Mas']),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,['Hombre','Mujer','Nino']),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,['Piel','Sintetico','Otro']),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,['Low(Bajo)','Mid(Medio)','High(Alto)']),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,['Deportivos','Casuales']),

    	        
    	send(D, below, W),
	
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)), 



 	send(W,display,Imagen3,point(420,0)),
	new(BtnAceptar,button('Continuar',and(message(@prolog,veriTipoTenisADQUI,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection), message(W, destroy)))),


    	
send(D,display,BtnAceptar,point(350,10)),

    	send(D, open_centered),
    	!.


% --------------------------------------------------------------------------------------- 



% --------------------------VERIFICAR TIPOS DE TENIS-------------------------------------


veriTipoTenis(ComboP,ComboC,ComboM,ComboA,ComboT) :-


(ComboT=='Deportivos'->
	




new(D, dialog),
    new(W,  window('Cuestionario', size(750, 500))),


    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(T,label(nombre,'Eliga las opciones que mas se adecue a los tenis que requiere:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),
new(P6,label(nombre,'6. Para que deporte los ocuparia?')),
new(P7,label(nombre,'7. Elija de que color los quiere:')),


	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,[ComboP]),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,[ComboC]),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,[ComboM]),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,[ComboA]),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,[ComboT]),

	new(ComboDeport,menu('Deporte:',cycle)),
	send_list(ComboDeport,append,['Futbol','Basquetbol','Correr']),

	new(ComboColor,menu('Color:',cycle)),
	send_list(ComboColor,append,['Negro','Blanco','Azul','Rojo','Verde','Gris','Cafe','Rosa','Amarillo']),
    	        
    	send(D, below, W),
	
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)),

	send(W,display,P6,point(40,340)),
    	send(W,display,ComboDeport,point(40,365)),

	send(W,display,P7,point(40,400)),
    	send(W,display,ComboColor,point(40,425)),




 new(BtnAceptar,button('Consultar',and(message(@prolog,buscarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,ComboDeport?selection,ComboColor?selection),message(W, destroy)))),


    	
send(D,display,BtnAceptar,point(350,10)),

    	send(D, open_centered)


);

(ComboT=='Casuales'->

new(D, dialog),
    new(W,  window('Cuestionario', size(750, 500))),
    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(T,label(nombre,'Eliga las opciones que mas se adecue a los tenis que requiere:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),
new(P6,label(nombre,'6. Desea que sus tenis tengan agujetas?')),
new(P7,label(nombre,'7. Elija de que color los quiere:')),


	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,[ComboP]),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,[ComboC]),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,[ComboM]),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,[ComboA]),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,[ComboT]),

	

	new(ComboColor,menu('Color:',cycle)),
	send_list(ComboColor,append,['Negro','Blanco','Azul','Rojo','Verde','Gris','Cafe','Rosa','Amarillo']),
        
    	send(D, below, W),
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)),

	send(W,display,P6,point(40,340)),
    	

	send(W,display,P7,point(40,400)),
    	send(W,display,ComboColor,point(40,425)),

	new(Op, menu('Agujetas', marked)),
	send(Op, append, si), send(Op,append, no),  
	send(Op, size,size(300,300)), 
	send(W, display, Op, point(40, 365)),


new(BtnAceptar,button('Consultar',and(message(@prolog,buscarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,Op?selection,ComboColor?selection),message(W, destroy)))),



    	
send(D,display,BtnAceptar,point(350,10)),

    	send(D, open_centered)     ).

%-----------------------------------------------------------------------------------------


% -----------------------------BUSCAR TENIS-----------------------------------------------

buscarTenis(A, B, C, D, E, F, G) :- 
tenis(Tenis), 
precio(Tenis, A),
categoria(B, Tenis), 
material(Tenis, C), 
altura(Tenis, D), 
tipo(Tenis, E), 
(E == 'Deportivos' -> deporte(Tenis, F)
;
E == 'Casuales' -> agujetas(Tenis, F)), 
color(Tenis, G), 
descripcion(Tenis, Resultado), 
resp(Resultado), !.

buscarTenis(A, B, C, D, E, F, G) :- 

writeln('No hay resultado con su busqueda:'),
writeln(A), writeln(B), writeln(C), writeln(D), writeln(E), writeln(F), writeln(G),
respNO(A,B,C,D,E,F,G).

resp(R):-

writeln(R),

new(D, dialog),
new(W,  window('Nuestra recomendacion', size(750, 500))),
new(R0,label(nombre,'1. Con base a la informacion obtenida le recomendamos:')),
new(R1,label(nombre,R)),
send(W,display,R0,point(40,15)),
send(W,display,R1,point(40,55)),

%resource(logo,image,image(G)).
%new(ImagenX,label(icon,resource(logo))),
%send(W,display,ImagenX,point(420,158)),

send(D, below, W),
send(D, open_centered).

respNO(A,B,C,D,E,F,G):-

new(X, dialog),
new(W,  window('No se encontro tenis adecuados a sus preferencias', size(750, 500))),
new(R0,label(nombre,'1. Con base a la informacion obtenida:')),
new(R1,label(nombre,A)),
new(R2,label(nombre,B)),
new(R3,label(nombre,C)),
new(R4,label(nombre,D)),
new(R5,label(nombre,E)),
new(R6,label(nombre,F)),
new(R7,label(nombre,G)),

send(W,display,R0,point(40,15)),
send(W,display,R1,point(40,45)),
send(W,display,R2,point(40,75)),
send(W,display,R3,point(40,105)),
send(W,display,R4,point(40,135)),
send(W,display,R5,point(40,165)),
send(W,display,R6,point(40,195)),
send(W,display,R7,point(40,225)),



new(BtnAgregar,button('Introducir tenis al sistema',and(message(@prolog,meterDatosNuevos,A,B,C,D,E,F,G), message(W, destroy)))),

    	
send(X,display,BtnAgregar,point(300,10)),






send(X, below, W),
send(X, open_centered).



%-----------------------------------------------------------------------------------------




% -----------------------VERIFICAR TIPO TENIS EN ADQUISICION------------------------------

 
veriTipoTenisADQUI(ComboP,ComboC,ComboM,ComboA,ComboT) :-


(ComboT=='Deportivos'->

new(D, dialog),
    new(W,  window('Modulo de Adquisicion', size(750, 500))), 
new(Imagen4,label(icon,resource(logo4))),
    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(T,label(nombre,'Eliga entre las opciones la configuracion del tenis que desee:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),
new(P6,label(nombre,'6. Para que deporte los ocuparia?')),
new(P7,label(nombre,'7. Elija de que color los quiere:')),
new(P8,label(nombre,'8. Introduzca el nombre de la variable(tenis):')),
new(TxtVariable,text_item('Nombre de la variable:
')),
new(P9,label(nombre,'9. Introduzca una descripcion del tenis:')),
new(TxtDescrip,text_item('Descripcion:
')),
new(P10,label(nombre,'10. Introduzca la explicacion de busqueda:')),
new(TxtExpli,text_item('Explicacion:
')),


	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,[ComboP]),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,[ComboC]),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,[ComboM]),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,[ComboA]),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,[ComboT]),

	new(ComboDeport,menu('Deporte:',cycle)),
	send_list(ComboDeport,append,['Futbol','Basquetbol','Correr']),

	new(ComboColor,menu('Color:',cycle)),
	send_list(ComboColor,append,['Negro','Blanco','Azul','Rojo','Verde','Gris','Cafe','Rosa','Amarillo']),
    	        
    	send(D, below, W),
	
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)),

	send(W,display,P6,point(40,340)),
    	send(W,display,ComboDeport,point(40,365)),

	send(W,display,P7,point(40,400)),
    	send(W,display,ComboColor,point(40,425)),

	send(W,display,P8,point(40,460)),
	send(W,display,TxtVariable,point(40,480)),

	send(W,display,P9,point(400,40)),
	send(W,display,TxtDescrip,point(400,65)),

	send(W,display,P10,point(400,100)),
	send(W,display,TxtExpli,point(400,125)),



send(W,display,Imagen4,point(420,146)),


 new(BtnAgregar,button('Introducir tenis al sistema',and(message(@prolog,guardarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,ComboDeport?selection,ComboColor?selection, TxtDescrip?selection, TxtVariable?selection),message(W, destroy),message(@prolog,test)))),


    	
send(D,display,BtnAgregar,point(300,10)),

    	send(D, open_centered)


);

(ComboT=='Casuales'->

new(D, dialog),
    new(W,  window('Modulo de Adquisicion', size(750, 500))), 
new(Imagen5,label(icon,resource(logo5))),

    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(T,label(nombre,'Eliga entre las opciones la configuracion del tenis que desee:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),
new(P6,label(nombre,'6. Desea que sus tenis tengan agujetas?')),
new(P7,label(nombre,'7. Elija de que color los quiere:')),
new(P8,label(nombre,'8. Introduzca el nombre de la variable(tenis):')),
new(TxtVariable,text_item('Nombre de la variable
')),
new(P9,label(nombre,'9. Introduzca una descripcion del tenis:')),
new(TxtDescrip,text_item('Descripcion:
')),
new(P10,label(nombre,'10. Introduzca la explicacion de busqueda:')),
new(TxtExpli,text_item('Explicacion:
')),


	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,[ComboP]),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,[ComboC]),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,[ComboM]),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,[ComboA]),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,[ComboT]),

	

	new(ComboColor,menu('Color:',cycle)),
	send_list(ComboColor,append,['Negro','Blanco','Azul','Rojo','Verde','Gris','Cafe','Rosa','Amarillo']),
        
    	send(D, below, W),
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)),

	send(W,display,P6,point(40,340)),
    	

	send(W,display,P7,point(40,400)),
    	send(W,display,ComboColor,point(40,425)),

	new(Op, menu('Agujetas', marked)),
	send(Op, append, si), send(Op,append, no),  
	send(Op, size,size(300,300)), 
	send(W, display, Op, point(40, 365)),

	send(W,display,P8,point(40,460)),
	send(W,display,TxtVariable,point(40,480)),

	send(W,display,P9,point(400,40)),
	send(W,display,TxtDescrip,point(400,65)), 

	send(W,display,P10,point(400,100)),
	send(W,display,TxtExpli,point(400,125)),

send(W,display,Imagen5,point(420,158)),

new(BtnAgregar,button('Introducir tenis al sistema',and(message(@prolog, guardarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,Op?selection,ComboColor?selection, TxtDescrip?selection, TxtVariable?selection),message(W, destroy),message(@prolog,test)))),

% descripcion 
    	
send(D,display,BtnAgregar,point(300,10)),

    	send(D, open_centered)     ).

%_____________________________________________________________________________


% ----------------PARA LA VENTANA ADQUISICION DESPUES DE NO HABER RESULTADOS------------



meterDatosNuevos(A,B,C,D,E,F,G) :-


(E=='Deportivos'->

new(X, dialog),
    new(W,  window('Modulo de Adquisicion', size(750, 500))), 
new(Imagen4,label(icon,resource(logo4))),
    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(T,label(nombre,'Eliga entre las opciones la configuracion del tenis que desee:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),
new(P6,label(nombre,'6. Para que deporte los ocuparia?')),
new(P7,label(nombre,'7. Elija de que color los quiere:')),
new(P8,label(nombre,'8. Introduzca el nombre de la variable(tenis):')),
new(TxtVariable,text_item('Nombre de la variable:
')),
new(P9,label(nombre,'9. Introduzca una descripcion del tenis:')),
new(TxtDescrip,text_item('Descripcion:
')),
new(P10,label(nombre,'10. Introduzca la explicacion de busqueda:')),
new(TxtExpli,text_item('Explicacion:
')),



	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,[A]),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,[B]),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,[C]),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,[D]),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,[E]),

	new(ComboDeport,menu('Deporte:',cycle)),
	send_list(ComboDeport,append,[F]),

	new(ComboColor,menu('Color:',cycle)),
	send_list(ComboColor,append,[G]),
    	        
    	send(X, below, W),
	
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)),

	send(W,display,P6,point(40,340)),
    	send(W,display,ComboDeport,point(40,365)),

	send(W,display,P7,point(40,400)),
    	send(W,display,ComboColor,point(40,425)),

	send(W,display,P8,point(40,460)),
	send(W,display,TxtVariable,point(40,480)),

	send(W,display,P9,point(400,40)),
	send(W,display,TxtDescrip,point(400,65)),

	send(W,display,P10,point(400,100)),
	send(W,display,TxtExpli,point(400,125)), 

send(W,display,Imagen4,point(420,146)),


new(BtnAgregar,button('Introducir tenis al sistema',and(message(@prolog,guardarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,ComboDeport?selection,ComboColor?selection, TxtDescrip?selection, TxtVariable?selection),message(W, destroy),message(@prolog,test)))),


    	
send(X,display,BtnAgregar,point(300,10)),


    	send(X, open_centered)


);

(E=='Casuales'->

new(X, dialog),
    new(W,  window('Modulo de Adquisicion', size(750, 500))), 
new(Imagen5,label(icon,resource(logo5))),

    
% SON LAS 5 PREGUNTAS GENERALES EN ETIQUETAS
new(T,label(nombre,'Eliga entre las opciones la configuracion del tenis que desee:')),
new(P1,label(nombre,'1. De cuanto es su presupuesto?')),
new(P2,label(nombre,'2. Que categoria requiere los tenis?')),
new(P3,label(nombre,'3. De que material prefiere sus tenis?')),
new(P4,label(nombre,'4. De que altura prefiere sus tenis(Altura a partir del tobillo)?')),
new(P5,label(nombre,'5. Que tipo de tenis busca?')),
new(P6,label(nombre,'6. Desea que sus tenis tengan agujetas?')),
new(P7,label(nombre,'7. Elija de que color los quiere:')),
new(P8,label(nombre,'8. Introduzca el nombre de la variable(tenis):')),
new(TxtVariable,text_item('Nombre de la variable
')),
new(P9,label(nombre,'9. Introduzca una descripcion del tenis:')),
new(TxtDescrip,text_item('Descripcion:
')),
new(P10,label(nombre,'10. Introduzca la explicacion de busqueda:')),
new(TxtExpli,text_item('Explicacion:
')),


	new(ComboPresupu,menu('Presupuesto:',cycle)),
	send_list(ComboPresupu,append,[A]),

	new(ComboCategoria,menu('Categoria:',cycle)),
	send_list(ComboCategoria,append,[B]),

	new(ComboMaterial,menu('Material:',cycle)),
	send_list(ComboMaterial,append,[C]),

	new(ComboAltura,menu('Altura:',cycle)),
	send_list(ComboAltura,append,[D]),

	new(ComboTipo,menu('Tipo:',cycle)),
	send_list(ComboTipo,append,[E]),

	

	new(ComboColor,menu('Color:',cycle)),
	send_list(ComboColor,append,[G]),
        
    	send(X, below, W),
	send(W,display,T,point(40,15)),
   	
	send(W,display,P1,point(40,40)),
    	send(W,display,ComboPresupu,point(40,65)),

    	send(W,display,P2,point(40,100)),
    	send(W,display,ComboCategoria,point(40,125)),

    	send(W,display,P3,point(40,160)),
    	send(W,display,ComboMaterial,point(40,185)),

    	send(W,display,P4,point(40,220)),
    	send(W,display,ComboAltura,point(40,245)),

    	send(W,display,P5,point(40,280)),
    	send(W,display,ComboTipo,point(40,305)),

	send(W,display,P6,point(40,340)),
    	

	send(W,display,P7,point(40,400)),
    	send(W,display,ComboColor,point(40,425)),



	new(Op, menu('Agujetas', marked)),
	send(Op, append, F),
	send(Op, size,size(300,300)), 
	send(W, display, Op, point(40, 365)),

	send(W,display,P8,point(40,460)),
	send(W,display,TxtVariable,point(40,480)),

	send(W,display,P9,point(400,40)),
	send(W,display,TxtDescrip,point(400,65)), 

	send(W,display,P10,point(400,100)),
	send(W,display,TxtExpli,point(400,125)), 

send(W,display,Imagen5,point(420,158)),




new(BtnAgregar,button('Introducir tenis al sistema',and(message(@prolog, guardarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,Op?selection,ComboColor?selection, TxtDescrip?selection, TxtVariable?selection),message(W, destroy),message(@prolog,test)))),


    	
send(X,display,BtnAgregar,point(300,10)),




    	send(X, open_centered)     ).




% ---------------------------------------------------------------------------------------




%------------------------PARA GUARDAR TENIS EN LA BASE DE HECHOS--------------------------

guardarTenis(A, B, C, D, E, F, G, H, X) :-
	asserta(tenis(X)), 
	asserta(precio(X, A)), 
	asserta(categoria(B, X)), 
	asserta(material(X, C)), 
	asserta(altura(X, D)),
	asserta(tipo(X, E)), 
	(E == 'Deportivos' -> asserta(deporte(X, F))
	;
	E == 'Casuales' -> asserta(agujetas(X, F))), 
	asserta(color(X, G)), 
	asserta(descripcion(X, H)), 
	guardar.
	
guardar :- 
	tell('/Users/jesusadrian/Desktop/SistemaExpertoTennis/hechos.pl'), 
	listing(tenis), 
	listing(precio), 
	listing(categoria), 
	listing(material), 
	listing(altura), 
	listing(tipo), 
	listing(deporte),
	listing(agujetas),
	listing(color),
	listing(descripcion), 
	told.

