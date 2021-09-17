Create DATABASE If Not Exists db_main;
Use db_main;

-- ******************************** Cliente ********************************!*
-- @field id_reg = Identificação do registro
-- @field razao = Nome ou Razão Social
-- @field tipo = Determina o tipo de cliente (Jurídica(J), Física(F))
-- @field cnpj = Cnpj ou Cpf
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
Create Table If Not Exists cliente(
	id_reg Integer Not Null AUTO_INCREMENT Primary Key,
	razao Varchar(60) Not Null Default "",
	tipo Char(1) Not Null Default "",
	cnpj Varchar(18) Not Null Default "",
	insc_est Varchar(18) Not Null Default "",
	dt_cad Date Not Null Default 0,
	dt_nasc Date Not Null Default 0,
	situ Char(1) Not Null Default "",
	obs TEXT Null,
	ult_compra Date Not Null Default 0,
	video_cheq BOOL Not Null Default 0,
	spc BOOL Not Null Default 0,
	serasa BOOL Not Null Default 0,
	deb_atraso BOOL Not Null Default 0,
	ult_atu Date Not Null Default 0,
	id_transp Integer Not Null Default 0,
	id_vendedor Integer Not Null Default 0,
	id_tab_preco Integer Not Null Default 0,
	limite Float(10,2) Not Null Default 0,
	limite_usado Float(10,2) Not Null Default 0,
	doc_pend BOOL Not Null Default 0,
	id_vend_ext Integer Not Null Default 0,
	sinc Char(1) Not Null Default "",
	dias_pag Varchar(10) Not Null Default "",
	id_area_ven Integer Not Null Default 0,
	id_cond_pag Integer Not Null Default 0,
	for_pagto Tinyint(1) Not Null Default 0,
	id_repres Integer Not Null Default 0,
	dest Tinyint(1) Not Null Default 0,
	Key id_tab_preco (id_tab_preco)
	) ENGINE=InnoDB Default CHARSET=utf8;
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
Create Table If Not Exists cliente_jur(
	id_reg Integer Not Null AUTO_INCREMENT Primary Key,
	id_cliente Integer Not Null Default 0,
	fantasia Varchar(60) Not Null Default "",
	apelido Varchar(20) Not Null Default "",
	site Varchar(60) Not Null Default "",
	crt Tinyint(1) Not Null Default 0,
	icms Float(6,2) Not Null Default 0,
	id_obs_nf Integer Not Null Default 0,
	imp_ref Tinyint(1) Not Null Default 0,
	Key fantasia (fantasia),
	Key id_cliente (id_cliente),
	Constraint FK_cliente_jur_id_cliente Foreign Key (id_cliente) References cliente (id_reg) ON Update NO ACTION ON Delete Cascade
	) ENGINE=InnoDB Default CHARSET=utf8;
-- *************************************************************************!*

-- **************************** Cliente Física *****************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente = Identificação do cliente
-- @field est_civil = Estado civil (Solteiro(S), Casado(C), Desquitado(D), Viúvo(V))
-- @field sexo = Sexo ( Masculino(M), Feminino(F) )
-- @field rs_desde = Reside desde
-- @field rec_bruta = Receita bruta
Create Table If Not Exists cliente_fis(
	id_reg Integer Not Null AUTO_INCREMENT Primary Key,
	id_cliente Integer Not Null Default 0,
	est_civil Char(1) Not Null Default "",
	sexo Char(1) Not Null Default "",
	rs_desde Date Not Null Default 0,
	rec_bruta Float(10,2) Not Null Default 0,
	Key id_cliente (id_cliente),
	Constraint FK_cliente_fis_id_cliente Foreign Key (id_cliente) References cliente (id_reg) ON Update NO ACTION ON Delete Cascade
	) ENGINE=InnoDB Default CHARSET=utf8;
-- *************************************************************************!*

-- ************************ Cliente Física Cônjuge *************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente_fis = Identificação do cliente pessoa física
-- @field nome_conj = Nome do Cônjuge
-- @field profissao = Profissão do Cônjuge
-- @field dt_nasc = Data de Nascimento do Cônjuge
-- @field renda = Renda do Cônjuge
-- @field celular = Celular do Cônjuge
Create Table If Not Exists cliente_fis_conj(
	id_reg Integer Not Null AUTO_INCREMENT Primary Key,
	id_cliente_fis Integer Not Null Default 0,
	nome_conj Varchar(50) Not Null Default "",
	profissao Varchar(40) Not Null Default "",
	dt_nasc Date Not Null Default 0,
	renda Float(10,2) Not Null Default 0,
	celular Varchar(14) Not Null Default "",
	Key id_cliente_fis (id_cliente_fis),
	Constraint FK_cliente_fis_conj_id_cliente_fis Foreign Key (id_cliente_fis) References cliente_fis (id_reg) ON Update NO ACTION ON Delete Cascade
	) ENGINE=InnoDB Default CHARSET=utf8;
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
Create Table If Not Exists cliente_contatos(
	id_reg Integer Not Null AUTO_INCREMENT Primary Key,
	id_cliente Integer Not Null Default 0,
	fone Varchar(14) Not Null Default "",
	ramal Varchar(5) Not Null Default "",
	chat Varchar(20) Not Null Default "",
	id_chat Varchar(50) Not Null Default "",
	email Varchar(50) Not Null Default "",
	contato Varchar(50) Not Null Default "",
	cargo Varchar(50) Not Null Default "",
	celular Varchar(14) Not Null Default "",
	dt_admi Date Not Null Default 0,
	Key contato (contato),
	Key id_cliente (id_cliente),
	Constraint FK_cliente_contatos_id_cliente Foreign Key (id_cliente) References cliente (id_reg) ON Update NO ACTION ON Delete Cascade
	) ENGINE=InnoDB Default CHARSET=utf8;
-- *************************************************************************!*

-- **************************** Cliente Contas *****************************!*
-- @field id_reg = Identificação do registro
-- @field id_cliente = Identificação do cliente
-- @field id_banco = Código do Banco
-- @field cod_agencia = Código de agência bancária
-- @field num_conta = Número da conta bancária
-- @field dt_abert = Data de abertura da conta
Create Table If Not Exists cliente_contas(
	id_reg Integer Not Null AUTO_INCREMENT Primary Key,
	id_cliente Integer Not Null Default 0,
	id_banco Integer Not Null Default 0,
	cod_agencia Varchar(10) Not Null Default "",
	num_conta Varchar(10) Not Null Default "",
	dt_abert Date Not Null Default 0,
	Key id_cliente (id_cliente),
	Constraint FK_cliente_contas_id_cliente Foreign Key (id_cliente) References cliente (id_reg) ON Update NO ACTION ON Delete Cascade
	) ENGINE=InnoDB Default CHARSET=utf8;
-- *************************************************************************!*

-- ******************************* Endereços *******************************!*
-- @field id_reg = Identificação do registro
-- @field lograd = Nome da rua, avenida, rodovia...
-- @field numero
-- @field cidade
-- @field bairro
-- @field cep
-- @field contato
-- @field fone
-- @field estado
-- @field complem = complemento
-- @field pref = Ponto de referência
-- @field tipo = Pode ser: 1 - Comercial, 2 - Residencial, 3 - Cobrança, 4 - Entrega
-- @field id_cliente = Identificação do cliente
-- @field id_fornec = Identificação do fornecedor
-- @field prin = Define se o endereço é o principal
Create Table If Not Exists endereco(
	id_reg Integer Not Null AUTO_INCREMENT Primary Key,
	lograd Varchar(60) Not Null Default "",
	numero Varchar(10) Not Null Default "",
	cidade Varchar(50) Not Null Default "",
	bairro Varchar(50) Not Null Default "",
	cep Varchar(10) Not Null Default "",
	contato Varchar(40) Not Null Default "",
	fone Varchar(14) Not Null Default "",
	estado Varchar(2) Not Null Default "",
	complem Varchar(50) Not Null Default "",
	pref Varchar(50) Not Null Default "",
	tipo Int(1) Not Null Default 0,
	id_cliente Integer Not Null Default 0,
	id_fornec Integer Not Null Default 0,
	prin Bool Not Null Default 0,
	Key id_cliente (id_cliente),
	Key id_fornec (id_fornec)
	) ENGINE=InnoDB Default CHARSET=utf8
