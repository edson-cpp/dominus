-- ******************************** Cliente ********************************!*
-- @field red_id = Record Identification
-- @field cname = Company Name
-- @field ctype = Determines the type of customer (Legal Person(L), Natural Person(N))
-- @field cnpj = Cnpj(National Registry of Legal Entities) ou Cpf(Individual Taxpayer Registration)
-- @field insc_est = Incricao Estadual ou Rg
-- @field dt_cad = Data de Cadastro do Cliente
-- @field dt_nasc = Data de Nascimento/Abertura
-- @field situ = Situação do cliente (Ativo(A), Inativo(I))
-- @field obs = Observação
-- @field ult_compra = Última Compra
-- @field vid_cheq = Incluso no vídeo cheque
-- @field spc = Incluso no Spc
-- @field serasa = Incluso no Serasa
-- @field deb_atraso = Débitos em atraso
-- @field ult_atu = Última altualização
-- @field id_transp = Código do Transportador
-- @field id_vendedor = Código do vendedor
-- @field id_tab_preco = Código da tabela de preços
-- @field limite = Limite de crédito
-- @field limite_usado = Limite de crédito usado
-- @field doc_pend = Cadastro incompleto com documentação pendente
-- @field id_vend_ext = Identificação do vendedor externo
-- @field sinc = Indica se o cliente está sincronizado com o sistema online: Sincronizado(S), Incluído(I), Atualizado(A), Excluído(E)
-- @field dias_pag = Dias fixos para pagamento durante o mês: Formato: 0510152025 = 05 - dia 5, 10 - dia 10...
-- @field id_area_ven = Identificação da área de venda
-- @field id_cond_pag = Condição de pagamento preferencial do cliente
-- @field for_pagto = Forma de pagamento preferencial do cliente
-- @field id_repres = Identificação do representante
-- @field dest = Destinação do produto: 1 - Consumo, 2 - Revenda, 3 - Industrialização
CREATE TABLE IF NOT EXISTS cliente(
	id_reg INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	razao VARCHAR(50) NOT NULL DEFAULT "",
	tipo CHAR(1) NOT NULL DEFAULT "",
	cnpj VARCHAR(18) NOT NULL DEFAULT "",
	insc_est VARCHAR(18) NOT NULL DEFAULT "",
	dt_cad DATE NOT NULL DEFAULT 0,
	dt_nasc DATE NOT NULL DEFAULT 0,
	situ CHAR(1) NOT NULL DEFAULT "",
	obs TEXT NULL,
	ult_compra DATE NOT NULL DEFAULT 0,
	video_cheq BOOL NOT NULL DEFAULT 0,
	spc BOOL NOT NULL DEFAULT 0,
	serasa BOOL NOT NULL DEFAULT 0,
	deb_atraso BOOL NOT NULL DEFAULT 0,
	ult_atu DATE NOT NULL DEFAULT 0,
	id_transp INTEGER NOT NULL DEFAULT 0,
	id_vendedor INTEGER NOT NULL DEFAULT 0,
	id_tab_preco INTEGER NOT NULL DEFAULT 0,
	limite FLOAT(10,2) NOT NULL DEFAULT 0,
	limite_usado FLOAT(10,2) NOT NULL DEFAULT 0,
	doc_pend BOOL NOT NULL DEFAULT 0,
	id_vend_ext INTEGER NOT NULL DEFAULT 0,
	sinc CHAR(1) NOT NULL DEFAULT "",
	dias_pag VARCHAR(10) NOT NULL DEFAULT "",
	id_area_ven INTEGER NOT NULL DEFAULT 0,
	id_cond_pag INTEGER NOT NULL DEFAULT 0,
	for_pagto TINYINT(1) NOT NULL DEFAULT 0,
	id_repres INTEGER NOT NULL DEFAULT 0,
	dest TINYINT(1) NOT NULL DEFAULT 0,
	KEY id_tab_preco (id_tab_preco)
	) ENGINE=INNODB DEFAULT CHARSET=UTF8;
-- *************************************************************************!*

-- *************************** Cliente Jurídica ****************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente = Identificação do cliente
-- @field fantasia = Nome Fantazia
-- @field apelido = Nome Abreviado/Apelido
-- @field site
-- @field crt = Código de Regime Tributário 1 - Simples Nacional, 2 - Simples Nacional, excesso sublimite de receita bruta, 3 - Regime Normal. (v2.0)
-- @field icms = Percentual de redução do icms: para isenção informar 100%
-- @field id_obs_nf = Identificação da observação da NF que será impressa devido a redução de icms
-- @field imp_ref = Imprimir PartNumber no campo código
CREATE TABLE IF NOT EXISTS cliente_jur(
	id_reg INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INTEGER NOT NULL DEFAULT 0,
	fantasia VARCHAR(50) NOT NULL DEFAULT "",
	apelido VARCHAR(15) NOT NULL DEFAULT "",
	site VARCHAR(50) NOT NULL DEFAULT "",
	crt TINYINT(1) NOT NULL DEFAULT 0,
	icms FLOAT(6,2) NOT NULL DEFAULT 0,
	id_obs_nf INTEGER NOT NULL DEFAULT 0,
	imp_ref TINYINT(1) NOT NULL DEFAULT 0,
	KEY fantasia (fantasia),
	KEY id_cliente (id_cliente),
	CONSTRAINT FK_cliente_jur_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_reg) ON UPDATE NO ACTION ON DELETE CASCADE
	) ENGINE=INNODB DEFAULT CHARSET=UTF8;
-- *************************************************************************!*

-- **************************** Cliente Física *****************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente = Identificação do cliente
-- @field naturali = Naturalidade
-- @field est_civil = Estado civil (Solteiro(S), Casado(C), Desquitado(D), Viúvo(V))
-- @field nacional = Nacionalidade
-- @field sexo = Sexo ( Masculino(M), Feminino(F) )
-- @field nome_pai
-- @field nome_mae
-- @field rs_desde = Reside desde
-- @field rec_bruta = Receita bruta
CREATE TABLE IF NOT EXISTS cliente_fis(
	id_reg INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INTEGER NOT NULL DEFAULT 0,
	naturali VARCHAR(50) NOT NULL DEFAULT "",
	est_civil CHAR(1) NOT NULL DEFAULT "",
	nacional VARCHAR(50) NOT NULL DEFAULT "",
	sexo CHAR(1) NOT NULL DEFAULT "",
	nome_pai VARCHAR(50) NOT NULL DEFAULT "",
	nome_mae VARCHAR(50) NOT NULL DEFAULT "",
	rs_desde DATE NOT NULL DEFAULT 0,
	rec_bruta FLOAT(10,2) NOT NULL DEFAULT 0,
	KEY id_cliente (id_cliente),
	CONSTRAINT FK_cliente_fis_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_reg) ON UPDATE NO ACTION ON DELETE CASCADE
	) ENGINE=INNODB DEFAULT CHARSET=UTF8;
-- *************************************************************************!*

-- ************************ Cliente Física Cônjuge *************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente_fis = Identificação do cliente pessoa física
-- @field nome_conj = Nome do Cônjuge
-- @field profissao = Profissão do Cônjuge
-- @field dt_nasc = Data de Nascimento do Cônjuge
-- @field renda = Renda do Cônjuge
-- @field celular = Celular do Cônjuge
CREATE TABLE IF NOT EXISTS cliente_fis_conj(
	id_reg INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente_fis INTEGER NOT NULL DEFAULT 0,
	nome_conj VARCHAR(50) NOT NULL DEFAULT "",
	profissao VARCHAR(40) NOT NULL DEFAULT "",
	dt_nasc DATE NOT NULL DEFAULT 0,
	renda FLOAT(10,2) NOT NULL DEFAULT 0,
	celular VARCHAR(14) NOT NULL DEFAULT "",
	KEY id_cliente_fis (id_cliente_fis),
	CONSTRAINT FK_cliente_fis_conj_id_cliente_fis FOREIGN KEY (id_cliente_fis) REFERENCES cliente_fis (id_reg) ON UPDATE NO ACTION ON DELETE CASCADE
	) ENGINE=INNODB DEFAULT CHARSET=UTF8;
-- *************************************************************************!*

-- *************************** Cliente Contatos ****************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente = Identificação do cliente
-- @field fone
-- @field ramal
-- @field chat = Tipo de bate papo
-- @field id_chat = id/Email do bate papo
-- @field email
-- @field contato
-- @field cargo
-- @field celular
-- @field dt_admi = Data de Admissão
CREATE TABLE IF NOT EXISTS cliente_contatos(
	id_reg INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INTEGER NOT NULL DEFAULT 0,
	fone VARCHAR(14) NOT NULL DEFAULT "",
	ramal VARCHAR(5) NOT NULL DEFAULT "",
	chat VARCHAR(20) NOT NULL DEFAULT "",
	id_chat VARCHAR(50) NOT NULL DEFAULT "",
	email VARCHAR(50) NOT NULL DEFAULT "",
	contato VARCHAR(30) NOT NULL DEFAULT "",
	cargo VARCHAR(50) NOT NULL DEFAULT "",
	celular VARCHAR(14) NOT NULL DEFAULT "",
	dt_admi DATE NOT NULL DEFAULT 0,
	KEY contato (contato),
	KEY id_cliente (id_cliente),
	CONSTRAINT FK_cliente_contatos_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_reg) ON UPDATE NO ACTION ON DELETE CASCADE
	) ENGINE=INNODB DEFAULT CHARSET=UTF8;
-- *************************************************************************!*

-- **************************** Cliente Contas *****************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente = Identificação do cliente
-- @field id_banco = Código do Banco
-- @field cod_agencia = Código de agência bancária
-- @field num_conta = Número da conta bancária
-- @field dt_abert = Data de abertura da conta
CREATE TABLE IF NOT EXISTS cliente_contas(
	id_reg INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INTEGER NOT NULL DEFAULT 0,
	id_banco INTEGER NOT NULL DEFAULT 0,
	cod_agencia VARCHAR(10) NOT NULL DEFAULT "",
	num_conta VARCHAR(10) NOT NULL DEFAULT "",
	dt_abert DATE NOT NULL DEFAULT 0,
	KEY id_cliente (id_cliente),
	CONSTRAINT FK_cliente_contas_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_reg) ON UPDATE NO ACTION ON DELETE CASCADE
	) ENGINE=INNODB DEFAULT CHARSET=UTF8;
-- *************************************************************************!*
