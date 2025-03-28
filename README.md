# Notas\_C2\_Base\_de\_Datos

This is a repository where the student Juherles Bravo is saving the projects, homeworks, and study workshops for the second cut of Database class.

# Base de Datos class Taller\_2

This is a short manual of how to create a database for shoe types.

# Description of the Data Base - Taller\_2

This is a short database where a shoe retailer can manage essential information about different types of shoes.

# Description of the TABLES in Taller\_2

This database has a table called "tipos\_de\_zapatos" which contains the following fields: id, nombre, material, precio, importado, utilidad, cantidad, and calidad.

# Creation of the Data Base - Taller\_2

\*Here we are going to share the creation of this database:

```
CREATE SCHEMA 'exampledbu';
```

# Use the Data Base - Taller\_2

\Here we are going to enter the database ExampleDBU to be able to add data and search for information.

```
USE ExampleDBU;
```

# Adding TABLES to the Data Base - Taller\_2

\Here we are going to create the table of the database to store the shoe information.

```
CREATE TABLE tipos_de_zapatos (
    id INT PRIMARY KEY,
    nombre VARCHAR(20),
    material VARCHAR(20),
    precio INT(10),
    importado TINYINT(1),
    utilidad VARCHAR(20)
);
```

# Modifying the TABLE tipos\_de\_zapatos - Taller\_2

\*Adding additional columns to the table.

```
ALTER TABLE tipos_de_zapatos
ADD COLUMN cantidad INT(4),
ADD COLUMN calidad VARCHAR(20);
```

# Adding data to our Data Base - Taller\_2

\Here we are adding the information for each column:

```
INSERT INTO tipos_de_zapatos (id, nombre, material, precio, importado, utilidad, cantidad, calidad)
VALUES
(1, 'deportivas', 'tela', 100000, 1, 'ejercicio', 50, 'media-alta'),
(2, 'mocasines', 'cuero', 170000, 0, 'evento formal', 30, 'alta'),
(3, 'tacones', 'charol', 150000, 0, 'evento formal', 45, 'alta'),
(4, 'botas', 'tecnocuero', 400000, 1, 'industrial', 20, 'alta'),
(5, 'sandalias', 'caucho', 80000, 0, 'playa', 70, 'media');
```

# 5 Instructions to search specific information on our database - Taller\_2

\Show all the data of each column.

```
SELECT * FROM tipos_de_zapatos;
```

\Show imported shoes with more than 30 units in stock.

```
SELECT * FROM tipos_de_zapatos WHERE importado = 1 AND cantidad > 30;
```

\Show shoes with quality 'alta' or 'media'.

```
SELECT * FROM tipos_de_zapatos WHERE calidad = 'alta' OR calidad = 'media';
```

\Show shoes that are not imported and either have more than 40 or less than 25 units.

```
SELECT * FROM tipos_de_zapatos WHERE importado = 0 AND (cantidad > 40 OR cantidad < 25);
```

\Show shoes with high quality that are either not imported or have more than 30 units.

```
SELECT * FROM tipos_de_zapatos WHERE calidad = 'alta' AND (importado = 0 OR cantidad > 30);
```

\Show shoes that are used for industrial purposes.

```
SELECT * FROM tipos_de_zapatos WHERE utilidad = 'industrial';
```

