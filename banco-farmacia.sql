 Código SQL gerado a partir do DER fornecido
CREATE TABLE FARMACIA (
    CNPJ_farmacia VARCHAR(18) PRIMARY KEY,
    tel_farmacia VARCHAR(15),
    end_farmacia VARCHAR(100),
    nome_farmacia VARCHAR(50)
);

CREATE TABLE PRODUTO (
    cd_produto INT PRIMARY KEY,
    qtd_produto INT,
    valor_produto DECIMAL(10,2),
    CNPJ_farmacia VARCHAR(18),
    FOREIGN KEY (CNPJ_farmacia) REFERENCES FARMACIA(CNPJ_farmacia)
);

CREATE TABLE FARMACEUTICO (
    RG_farmaceutico VARCHAR(12) PRIMARY KEY,
    nome_farmaceutico VARCHAR(100),
    CNPJ_farmacia VARCHAR(18),
    FOREIGN KEY (CNPJ_farmacia) REFERENCES FARMACIA(CNPJ_farmacia)
); 
