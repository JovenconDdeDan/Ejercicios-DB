CREATE SCHEMA 'exampledbu';

use ExampleDBU;

create table tipos_de_zapatos (
id INT PRIMARY KEY,
nombre VARCHAR(20),
material VARCHAR(20),
precio INT(10),
importado TINYINT(1),
utilidad VARCHAR(20)
);

alter table tipos_de_zapatos
add column cantidad INT(4),
add column calidad VARCHAR(20)
;

insert into tipos_de_zapatos (id,nombre,material,precio,importado,utilidad,cantidad,calidad)
values
(1,'deportivas','tela',100000,1,'ejercicio',50,'media-alta'),
(2,'mocasines','cuero',170000,0,'evento formal',30,'alta'),
(3,'tacones','charol',150000,0,'evento formal',45,'alta'),
(4,'botas','tecnocuero',400000,1,'industrial',20,'alta'),
(5,'sandalias','caucho',80000,0,'playa',70,'media');

select * from tipos_de_zapatos;

select * from tipos_de_zapatos where importado = 1 AND cantidad > 30;

select * from tipos_de_zapatos where calidad = 'alta' OR calidad = 'media';

select * from tipos_de_zapatos where importado = 0 AND (cantidad > 40 OR cantidad < 25);

select * from tipos_de_zapatos where calidad = 'alta' AND (importado = 0 OR cantidad > 30);

select * from tipos_de_zapatos where utilidad = 'industrial';
