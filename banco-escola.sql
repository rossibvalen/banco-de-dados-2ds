-- 2. Tabela de Alunos
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100)
);

-- 3. Tabela de Professores
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    email VARCHAR(100)
);

-- 4. Tabela de Disciplinas
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(50) NOT NULL,
    carga_horaria INT
);

-- 5. Tabela de Turmas (Relaciona Professor e Disciplina)
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(20) NOT NULL,
    ano_letivo INT NOT NULL,
    fk_id_professor INT,
    fk_id_disciplina INT,
    FOREIGN KEY (fk_id_professor) REFERENCES Professores(id_professor),
    FOREIGN KEY (fk_id_disciplina) REFERENCES Disciplinas(id_disciplina)
);

-- 6. Tabela de Matriculas (Relaciona Alunos às Turmas)
CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_aluno INT,
    fk_id_turma INT,
    data_matricula DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (fk_id_aluno) REFERENCES Alunos(id_aluno),
    fk_id_turma REFERENCES Turmas(id_turma)
);

