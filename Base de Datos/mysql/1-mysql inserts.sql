insert into publishers(name, country)
values('Platzi', 'USA');

select * from publishers;

insert into publishers(publisher_id, name, country)
values(10, 'Santillana', 'MX');

select * from publishers;

insert into publishers(name, country)
values('MIT', 'USA');

select * from publishers;

select count(*) from publishers;
select count(publisher_id) from publishers;

/*
truncate publishers;
truncate users;
*/

insert into publishers(publisher_id, name, country)
values(1, 'OReilly', 'USA'),
(2, 'Santillana', 'Mexico'),
(3, 'MIT Edu', 'USA'),
(4, 'UTPC', 'Colombia'),
(5, 'Platzi', 'USA');

select * from publishers;

insert into users(name, email) values
('Ricardo', 'ricardo@hola.com'),
('Laura', 'laura@hola.com'),
('Jose', 'jose@hola.com'),
('Sofia', 'sofia@hola.com'),
('Fernanda', 'fernanda@hola.com'),
('Jose Guillermo', 'memo@hola.com'),
('Maria', 'Maria@hola.com'),
('Susana', 'susana@hola.com'),
('Jorge', 'jorge@hola.com');

select * from users;

INSERT INTO books(publisher_id, title, author, description, price, copies) VALUES
    (1, 'Mastering MySQL', 'John Goodman', 'Clases de bases de datos usando MySQL', 10.50, 4),
    (2, 'Trigonometria avanzada', 'Pi Tagoras', 'Trigonometria desde sus origenes', 7.30, 2),
    (3, 'Advanced Statistics', 'Carl Gauss', 'De curvas y otras graficas', 23.60, 1),
    (4, 'Redes Avanzadas', 'Tim Bernes-Lee', 'Lo que viene siendo el Internet', 13.50, 4),
    (2, 'Curvas Parabolicas', 'Napoleon TNT', 'Historia de la parabola', 6.99, 10),
    (1, 'Ruby On (the) Road', 'A Miner', 'Un nuevo acercamiento a la programacion', 18.75, 4),
    (1, 'Estudios basicos de estudios', 'John Goodman', 'Clases de datos usando MySQL', 10.50 , 4),
    (4, 'Donde esta Y?', 'John Goodman', 'Clases de datos usando MySQL', 10.50, 4),
    (3, 'Quimica Avanzada', 'John White', 'Profitable studies on chemistry', 45.35, 1),
    (4, 'Graficas Matematicas', 'Rene Descartes', 'De donde viene el plano', 13.99, 7),
    (4, 'Numeros Importantes', 'Leonard Euler', 'De numeros que a veces nos sirven', 10, 3),
    (3, 'Modelado de conocimiento', 'Jack Friedman', 'Una vez adquirido, como se guarda el conocimiento', 29.99, 2),
    (3, 'Teoria de juegos', 'John Nash', 'A o B?', 12.55, 3),
    (1, 'Calculo de variables', 'Brian Kernhigan', 'Programacion mega basica', 9.50, 3),
    (5, 'Produccion de streaming', 'Juan Pablo Rojas', 'De la oficina ala pan', 23.49, 9),
    (5, 'ELearning', 'JFD & DvdH', 'Diseno y ejecucion de educacion online', 23.55, 4),
    (5, 'Pet Caring for Geeks', 'KC', 'Que tu perro aprenda a programar', 18.79, 3 ),
    (1, 'Algebra basica', 'Al Juarismi', 'Esto de encontrar X o Y, dependiendo', 13.50, 8);
    
select * from books;

insert into actions (book_id, user_id, action_type)values
  (3, 2, 'venta'),
  (6, 1, 'prestamo'),
  (7, 7, 'prestamo'),
(7, 7, 'devolucion'),
  (2, 5, 'venta'),
  (10, 9, 'venta'),
  (18, 8, 'prestamo'),
  (12, 4, 'venta'),
  (1, 3, 'venta'),
  (4, 5, 'prestamo'),
  (5, 2, 'venta');
  
select * from actions;