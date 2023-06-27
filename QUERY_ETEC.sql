CREATE DATABASE BD_ETEC

--CRIADA
CREATE TABLE tb_sala(
	idSala INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	lugares INT NOT NULL,
	fk_idCurso INT NOT NULL,
	FOREIGN KEY (fk_idCurso) REFERENCES tb_curso(idCurso)
)

INSERT INTO tb_sala(lugares,fk_idCurso) VALUES
(50, 1),
(30, 2)


--CRIADA
CREATE TABLE tb_sala_funcionario(
	fk_idSala INT NOT NULL,
	fk_id_Funcionario INT NOT NULL,
	FOREIGN KEY (fk_idSala) REFERENCES tb_sala(idSala),
	FOREIGN KEY (fk_id_Funcionario) REFERENCES tb_funcionario (idFuncionario)
)

INSERT INTO tb_sala_funcionario(fk_idSala, fk_id_Funcionario) VALUES
(1, 3)

--CRIADA
CREATE TABLE tb_funcionario(
	idFuncionario INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	nome_funcionario VARCHAR (20) NOT NULL
)

INSERT INTO tb_funcionario(nome_funcionario) VALUES
('Fernando Ribeiro'),
('Isabel de Santos'),
('Roque Rodrigues')


--CRIADA
CREATE TABLE tb_curso(
	idCurso INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	descricao_curso VARCHAR (30) NOT NULL,
)

INSERT INTO tb_curso(descricao_curso) VALUES
('Desenvolvimento de Sistemas'),
('Administração')


--CRIADA
CREATE TABLE tb_curso_materia(
	fk_idCurso INT NOT NULL,
	fk_idMateria INT NOT NULL,
	FOREIGN KEY (fk_idCurso) REFERENCES tb_curso(idCurso),
	FOREIGN KEY (fk_idMateria) REFERENCES tb_materia(idMateria)
)

INSERT INTO tb_curso_materia(fk_idCurso, fk_idMateria) VALUES
(1, 3), 
(1, 4), 
(1, 5),
(2, 4)



--CRIADA
CREATE TABLE tb_materia (
	idMateria INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	nome_materia VARCHAR (30) NOT NULL,
	fk_idProfessor INT NOT NULL,
	FOREIGN KEY (fk_idProfessor) REFERENCES tb_professor(idProfessor)
)



INSERT INTO tb_materia(nome_materia, fk_idProfessor) VALUES 
('Desenvolvimento Web', 1),
('Photoshop', 2),
('Sistemas embarcados', 3)

--CRIADA
CREATE TABLE tb_professor (
	idProfessor INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	nome_porofessor VARCHAR (30) NOT NULL,
	data_admissao VARCHAR (15) NOT NULL
)

INSERT INTO tb_professor (nome_porofessor, data_admissao) VALUES
('Rodrigo Santana', '02-03-2020'),
('Marcelo Buarte', '15-02-2020'),
('Ana Carolina', '10-04-2018')


--CRIADA
CREATE TABLE tb_aluno(
	idAluno INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	nome_aluno VARCHAR(20) NOT NULL,
	endereco VARCHAR (25) NOT NULL,
	frequencia VARCHAR (6) NOT NULL,
	resultado_final VARCHAR (20) NOT NULL,
	fk_idCurso INT NOT NULL,
	FOREIGN KEY (fk_idCurso) REFERENCES tb_curso(idCurso)
)

SELECT * FROM tb_sala

SELECT * FROM tb_curso

SELECT * FROM tb_curso_materia

SELECT * FROM tb_materia

SELECT * FROM tb_professor

SELECT * FROM tb_aluno

SELECT * FROM tb_funcionario

SELECT * FROM tb_sala_funcionario









