 use proyecto_integrador;

insert into users(name,mail,date_of_birth,foto,cell_phone_number)
values('alexander garcia', 'alexandergarciaclei5b@gmail.com', '2001-06-06', 1, 3044448221),
('sandra zuñiga', 'alexandersoloyo777@gmail.com', '1998-07-30', 1, 3006037023),
('juan pablo colorado', 'alpulgarin@gmail.com', '2001-08-12', 0, 3233750916),
('andrea pulgarin', 'ylapulgarin@gmail.com', '1995-06-01', 1, 3048065307);

insert into roles(name)
values('administrativo'),('formador'),('estudiante');

insert into modules(name,modality_id,description,journey_id,duration)
values('nivelatorio', 7,'poner a punto a todos los participantes', 30, 2),
('sql', 7, 'se enseño todo lo relacionado con sql y su implementacion', 29, 1),
('node', 7, 'se les intruira en todo lo relacionado con node y su implementacion', 29,3),
('javaascript', 7, 'se enseñara a usar javascript', 30, 4),
('web', 7, 'se enseño a usar la web con sus extensiones y modalidades', 28, 6),
('react', 7, 'se enseño el manejo de react y sus herramientas', 28, 5);

insert into journeys(name)
values('mañana'), ('tarde'),('ambas');

insert into careers(name,cut,description,image,journey_id)
values('backend', '2022-12-16', 'esta sera la corte de backend 2022', 1, 29),
('frontend', '2022-12-16', 'esta sera la corte de frontend 2022', 1, 28),
('fullstar', '2022-12-16', 'estos son los fullstart 2022', 1,30);

insert into cities(name)
values('Medellin'),('itagûi');

insert into the_groups(group_code)
values('fm2022'),('bt2022');

insert into addresses(city_id,user_id,adress)
values(16,49, 'cll 35-D 108-30'),
(16,50, 'cll 35 B 127-15'),
(16, 51, 'cll 35 B 128-25'),
(16, 51, 'cll 35 B 115-30');


insert into users_roles(user_id,rol_id)
values(49, 39),
(50, 39),
(51,39),
(52,37);

insert into users_careers(user_id,career_id)
values(49, 27),
(50, 25),
(51, 25),
(52, 26);

insert into groups_users(user_id,group_id)
values(49, 18),
(50, 18),
(51, 18),
(52, 17);

insert into careers_modules(modulo_id,career_id)
values(57, 27),
(58, 25),
(59, 25),
(60, 27),
(61, 26),
(62, 26);

insert into news(title,description,photo,date,user_id)
values('inicios', 'aca se ve lo que fue de codigo en sus inicios', 1, '2022-06-15', 49),
('avances', 'aca quedaran registrado los avances en codigo', 0, '2022-05-30', 50),
('clases', 'quedara registrado el proceso en las clases', 1, '2022-06-24', 52);

insert into modalitys(name)
values('Presencial'),
('virtual');