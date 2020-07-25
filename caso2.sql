CREATE TABLE alumnos(
idAlumno SERIAL PRIMARY KEY,
RUTAlumno VARCHAR,
NombreAlumno VARCHAR);


CREATE TABLE cursos(
idCurso SERIAL PRIMARY KEY,
NombreCurso VARCHAR
);

CREATE TABLE asignacioncurso(
IdAsignacion SERIAL PRIMARY KEY,
IdAlumno INT,
IdCurso INT,
FOREIGN KEY (IdAlumno) REFERENCES alumnos(idAlumno),
FOREIGN KEY (IdCurso) REFERENCES cursos(idCurso)
);


CREATE TABLE profesor(
IdProfesor SERIAL PRIMARY KEY,
NombreProfesor VARCHAR,
NombreDpto VARCHAR
);

CREATE TABLE pruebas(
IdPrueba SERIAL PRIMARY KEY,
IdAsignacionCurso INT,
IdProfesor INT,
NotaFinal FLOAT,
Puntaje INT,
FOREIGN KEY (IdAsignacionCurso) REFERENCES asignacioncurso(IdAsignacion),
FOREIGN KEY (IdProfesor) REFERENCES profesor(IdProfesor));







