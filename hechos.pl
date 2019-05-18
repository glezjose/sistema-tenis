:- dynamic tenis/1.

tenis(hgg).
tenis(jordan_1).
tenis(jordan_2).
tenis(air_max_97).
tenis(old_skool).
tenis(chuck_taylor_v2).
tenis(super_star).
tenis(classic_slip_on).

:- dynamic precio/2.

precio(hgg, '$500-$1499').
precio(jordan_1, '$2500 o Mas').
precio(jordan_2, '$2500 o Mas').
precio(old_skool, '$500-$1499').
precio(air_max_97, '$2500 o Mas').
precio(chuck_taylor_v2, '$1500-$2499').
precio(super_star, '$1500-$2499').
precio(classic_slip_on, '$500-$1499').

:- dynamic categoria/2.

categoria('Hombre', hgg).
categoria('Hombre', jordan_1).
categoria('Hombre', jordan_2).
categoria('Mujer', air_max_97).
categoria('Hombre', old_skool).
categoria('Hombre', chuck_taylor_v2).
categoria('Hombre', super_star).
categoria('Mujer', classic_slip_on).

:- dynamic material/2.

material(hgg, 'Otro').
material(jordan_1, 'Piel').
material(jordan_2, 'Piel').
material(air_max_97, 'Sintetico').
material(old_skool, 'Sintetico').
material(chuck_taylor_v2, 'Sintetico').
material(super_star, 'Sintetico').
material(classic_slip_on, 'Sintetico').

:- dynamic altura/2.

altura(hgg, 'Low(Bajo)').
altura(jordan_1, 'Mid(Medio)').
altura(jordan_2, 'Mid(Medio)').
altura(air_max_97, 'Low(Bajo)').
altura(old_skool, 'Mid(Medio)').
altura(chuck_taylor_v2, 'Low(Bajo)').
altura(super_star, 'Low(Bajo)').
altura(classic_slip_on, 'Low(Bajo)').

:- dynamic tipo/2.

tipo(hgg, 'Casuales').
tipo(jordan_1, 'Deportivos').
tipo(jordan_2, 'Deportivos').
tipo(old_skool, 'Casuales').
tipo(air_max_97, 'Deportivos').
tipo(chuck_taylor_v2, 'Casuales').
tipo(super_star, 'Casuales').
tipo(classic_slip_on, 'Casuales').

:- dynamic deporte/2.

deporte(jordan_1, 'Basquetbol').
deporte(jordan_2, 'Basquetbol').
deporte(air_max_97, 'Correr').

:- dynamic agujetas/2.

agujetas(hgg, no).
agujetas(old_skool, no).
agujetas(chuck_taylor_v2, no).
agujetas(super_star, no).
agujetas(classic_slip_on, si).

:- dynamic color/2.

color(hgg, 'Negro').
color(jordan_1, 'Negro').
color(jordan_2, 'Negro').
color(air_max_97, 'Negro').
color(old_skool, 'Negro').
color(chuck_taylor_v2, 'Negro').
color(super_star, 'Negro').
color(classic_slip_on, 'Blanco').

:- dynamic descripcion/2.

descripcion(hgg, hggd).
descripcion(jordan_1, 'Jordan 1, marca Nike, para Hombre').
descripcion(jordan_2, 'Jordan 2, marca Nike, para Hombre').
descripcion(air_max_97, 'Air Max 97 marca Nike, para Mujer').
descripcion(old_skool, 'Old Skool, marca Vans, para Hombre').
descripcion(chuck_taylor_v2, 'Chuck Taylor V2, marca Converse, para Hombre').
descripcion(super_star, 'Super Star, marca Adidas, para Hombre').
descripcion(classic_slip_on, 'Classic Slip Ons, marca Vans, para Mujer').

:- dynamic imagen/2.

imagen(hgg, 'hgg.jpg').
imagen(jordan_1, 'jordan_1.jpg').
imagen(old_skool, 'old_skool.jpg').

