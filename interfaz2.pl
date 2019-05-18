

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

    new(BtnIni,button('Iniciar Consulta',and(message(@prolog,ventanaTest)))),


    new(BtnAdqui,button('Modulo de Adquisicion',and(message(@prolog,ventanaAdqui)))),
    new(BtnSalir,button('Salir',message(@prolog, solve, D, 10, 20))),
    
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

    	send(D, open_centered), !.


% --------------------------------------------------------------------------------------- 
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



 new(BtnAceptar,button('Consultar',message(@prolog,buscarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,ComboDeport?selection,ComboColor?selection))),


    	
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

 new(BtnAceptar,button('Consultar',message(@prolog,buscarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,Op?selection,ComboColor?selection))),


    	
send(D,display,BtnAceptar,point(350,10)),

    	send(D, open_centered)     ).

%-----------------------------------------------------------------------------------------

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
imagen(Tenis, Imagen),  
resp(Resultado, Imagen), !.

buscarTenis(A, B, C, D, E, F, G) :- 
writeln('No hay resultado').

resp(R, I):-  
writeln(R), writeln(I), 
new(D, dialog), 
new(W,  window('Nuestra recomendacion', size(750, 500))), 
new(R0,label(nombre,'1. Con base a la informacion obtenida le recomendamos:')),
new(R1,label(nombre,R)), 
send(W,display,R0,point(40,15)),
send(W,display,R1,point(40,55)), 
mostrar(I, W, 10, 70), 
send(D, below, W),
send(D, open_centered).

mostrar(I, W, X, Y) :- 
new(Imagen, image(I)), 
new(B,bitmap(Imagen)),
new(F,figure), 
send(F,display,B), 
new(D1,device), 
send(D1,display,F), 
send(W,display,D1), 
send(W,display,D1,point(X,Y)).

%-----------------------------------------------------------------------------------------

% --------------------------------------------------------------------------------------- 
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

send(W,display,Imagen4,point(420,146)),


 new(BtnAgregar,button('Introducir tenis al sistema',message(@prolog,guardarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,ComboDeport?selection,ComboColor?selection, TxtDescrip?selection, TxtVariable?selection))),


    	
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

send(W,display,Imagen5,point(420,158)),

new(BtnAgregar,button('Introducir tenis al sistema',message(@prolog, guardarTenis,ComboPresupu?selection,ComboCategoria?selection,ComboMaterial?selection,ComboAltura?selection,ComboTipo?selection,Op?selection,ComboColor?selection, TxtDescrip?selection, TxtVariable?selection))),


    	
send(D,display,BtnAgregar,point(300,10)),

    	send(D, open_centered)     ).

%_____________________________________________________________________________

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
	atom_concat(X, '.jpg', I), 
	asserta(imagen(X, I)), 
	guardar.
	
guardar :- 
	tell('hechos.pl'), 
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
	listing(imagen), 
	told.

