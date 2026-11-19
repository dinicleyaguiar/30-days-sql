CREATE TABLE Alunos (
  aluno_id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE
);

CREATE TABLE Cursos (
  curso_id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  carga_horaria INT
);

CREATE TABLE Matriculas (
  matricula_id INT PRIMARY KEY,
  aluno_id INT,
  curso_id INT,
  FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
  FOREIGN KEY (curso_id) REFERENCES Cursos(curso_id),
  UNIQUE (aluno_id, curso_id)
);

-- Exemplos de dados
INSERT INTO Alunos (aluno_id, nome, data_nascimento) VALUES
  (1, 'João Silva', '2005-05-15'),
  (2, 'Maria Oliveira', '2006-08-22');

INSERT INTO Cursos (curso_id, nome, carga_horaria) VALUES
  (101, 'Matemática', 80),
  (102, 'História', 60);

INSERT INTO Matriculas (matricula_id, aluno_id, curso_id) VALUES
  (1, 1, 101),
  (2, 2, 102);

-- Consulta para verificar relações
SELECT Alunos.nome, Cursos.nome
FROM Alunos
JOIN Matriculas ON Alunos.aluno_id = Matriculas.aluno_id
JOIN Cursos ON Cursos.curso_id = Matriculas.curso_id;