-- Tabela de Usuários
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    tipo_perfil VARCHAR(20) NOT NULL
);

-- Tabela de Agendamentos
CREATE TABLE agendamentos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    paciente_id INTEGER NOT NULL,
    data_hora DATETIME NOT NULL,
    status VARCHAR(20) DEFAULT 'pendente',
    FOREIGN KEY (paciente_id) REFERENCES usuarios(id)
);

-- Tabela de Triagens
CREATE TABLE triagens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    agendamento_id INTEGER NOT NULL,
    descricao_demanda TEXT NOT NULL,
    urgencia VARCHAR(20) NOT NULL,
    FOREIGN KEY (agendamento_id) REFERENCES agendamentos(id)
);
