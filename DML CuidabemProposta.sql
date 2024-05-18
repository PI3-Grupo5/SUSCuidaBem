-- -----------------------------------------------------
-- Após a criação do banco de dados vamos demonstrar o 
-- os seu funcionamento simulando uma implementação real
-- do sistema.
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Antes de disponibilizarmos o sistema para uso dos
-- pacientes vamos primeiro inserir os dados dos 
-- profissionais de saúde
-- A qualquer momento é possível realizar novo cadastro
-- conforme demanda dos usários.
-- -----------------------------------------------------

INSERT INTO Profissionais_saude VALUES (DEFAULT,'Carlos Massa','Cardiologista','SP1111111111111','44512340001','ratinho@cuidabem.com.br');
INSERT INTO Profissionais_saude VALUES (DEFAULT,'Ana Maria Braga','Dermatologista','RJ2222222222222','44523450002','maisvoce@cuidabem.com.br');
INSERT INTO Profissionais_saude VALUES (DEFAULT,'Willian Bonner','Pediatra','PR3333333333333','44534560003','jornalnacional@cuidabem.com.br');
INSERT INTO Profissionais_saude VALUES (DEFAULT,'Senor Abravanel','Ortopedista','PE4444444444444','44545670004','topatudopordinheiro@cuidabem.com.br');


-- -----------------------------------------------------
-- Agora vamos inserir os dados de agenda disponível dos 
-- profissionais. Neste caso apenas três deles vão
-- disponibilizar horários para marcação de consulta.
-- A qualquer momento qualquer outro registro pode ser
-- realizado. Basta ser um profissional registrado na
-- tabela profissionais_saude
-- -----------------------------------------------------

INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-30','08:00:00',30,'DISPONIVEL','SBT',1);
INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-30','08:30:00',30,'DISPONIVEL','SBT',1);
INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-30','09:00:00',30,'DISPONIVEL','GLOBO',2);
INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-30','09:30:00',30,'DISPONIVEL','GLOBO',2);
INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-10','08:00:00',30,'DISPONIVEL','GLOBO',3);
INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-10','08:30:00',30,'DISPONIVEL','GLOBO',3);
INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-10','09:00:00',30,'DISPONIVEL','GLOBO',3);
INSERT INTO agenda_atendimentos VALUES (DEFAULT,'2024-05-10','09:30:00',30,'DISPONIVEL','GLOBO',3);

-- -----------------------------------------------------
-- Antes do sistema ser liberado para marcação de 
-- consultas vamos inserir o cadastro inicial de
-- medicamentos.
-- A qualquer momento é possível realizar novo cadastro
-- conforme demanda dos usários.
-- -----------------------------------------------------

INSERT INTO Medicamentos VALUES (DEFAULT,'Losartana','Losartana potássica',535,0);  
INSERT INTO Medicamentos VALUES (DEFAULT,'Artemidis','Acetato de ciproterona e  etinilestradiol',1,350);  
INSERT INTO Medicamentos VALUES (DEFAULT,'Amoxicilina','Amoxicilina tri-hidratada',123,0);  
INSERT INTO Medicamentos VALUES (DEFAULT,'Gesso para perna','Gesso médico',1,20);  
INSERT INTO Medicamentos VALUES (DEFAULT,'Angipress','Carbonato de magnésio,amido,gelatina,laurilsulfato dsódio,amidoglicolato dsódio,estearato dmagnésio',322,0);  
INSERT INTO Medicamentos VALUES (DEFAULT,'Neotigason','Acitretina',12,0);  
INSERT INTO Medicamentos VALUES (DEFAULT,'Clenil A','Dipropionato de beclometasona',20,0);  
INSERT INTO Medicamentos VALUES (DEFAULT,'Gesso para braço','Gesso médico',12,10);

-- -----------------------------------------------------
-- Finalmente com os dados necessários para agendar as
-- consultas é possível realizar o cadastro dos
-- pacientes na tabela pacientes. 
-- A qualquer momento é possível realizar novo cadastro
-- conforme demanda dos usários.
-- -----------------------------------------------------

INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000001','Pedro Álvares Cabral','1467-04-22','55512340001','o_descobridor@grandesnavegacoes.com.pt');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000002','Joaquim José da Silva Xavier','1746-11-12','55523450002','tiradentes@inconfidenciamineira.com.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000003','Pedro de Alcântara João Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula Leocádio Miguel Gabriel Rafael Gonzaga','1825-12-02','55534560003','d.pedro2@imperio.gov.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000004','Joaquim Maria Machado de Assis','1839-06-21','55545670004','machadodeassis@escritores.com.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000005','Sebastião Rodrigues Maia','1942-09-28','55556780005','timmaia@mus.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000006','Rita Lee Jones de Carvalho','1947-12-31','55567890006','ritalee@mus.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000007','Francisco de Assis França','1966-03-13','55578900007','chicoscience@nacaozumbi.mus.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000008','Edson Arantes do Nascimento','1940-10-23','55589010008','pele@fut.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000009','Patrícia Poeta','1940-10-24','55589010008','encontro@cuidabem.com.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000010','Celso Portiolli','1940-10-25','55589010008','passaourepassa@cuidabem.com.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000011','Jô Soares','1940-10-26','55589010008','jo@cuidabem.com.br');
INSERT INTO Pacientes VALUES (DEFAULT,'SUS000000000012','Hebe Camargo','1940-10-27','55589010008','hebe@cuidabem.com.br');

-- -----------------------------------------------------
-- Comando para verificar os ID paciente pelo nome.
-- Posteriormente é necessário a criação de tabelas de
-- login e senha para permitir que a aplicação final
-- possa restringir o acesso ao cadastro de pacientes e
-- profissionais de saúde.
-- Os dados de cada paciente aparecerão em abas
-- diferentes.
-- -----------------------------------------------------

SELECT ID_Paciente, No_cartao_sus,Nome FROM pacientes WHERE Nome= 'Pedro Álvares Cabral';
SELECT ID_Paciente, No_cartao_sus,Nome FROM pacientes WHERE Nome= 'Joaquim José da Silva Xavier';
SELECT ID_Paciente, No_cartao_sus,Nome FROM pacientes WHERE Nome= 'Pedro de Alcântara João Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula Leocádio Miguel Gabriel Rafael Gonzaga';


-- -----------------------------------------------------
-- A partir do cadastro inicial dos pacientes, vai ser 
-- gerado um ID_Paciente. Com este ID é possível
-- completar o cadastro com o endereço. Segue abaixo
-- o cadastro dos pacientes já registrados.
-- -----------------------------------------------------

INSERT INTO Enderecos VALUES (DEFAULT,'Rua Nascimento Silva',107,'-','Ipanema',22421022,'Rio de Janeiro','RJ',1);
INSERT INTO Enderecos VALUES (DEFAULT,'Avenida Paulista',1578,'-','Bela Vista',21310200,'São Paulo','SP',2);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua dos Lírios',980,'-','Centro',22223333,'Recife','PE',3);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua das Amélias',13,'Casa B','Engenho do meio',44445555,'Curitiba','PR',4);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua das Rosas',1987,'-','Madalena',66667777,'Belo Horizonte','MG',5);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua Jasmim',167,'-','Torre',88889999,'Salvador','BA',6);
INSERT INTO Enderecos VALUES (DEFAULT,'Avenida Atlântica ',1,'Apto 808','Piedade',11112222,'Manaus','AM',7);
INSERT INTO Enderecos VALUES (DEFAULT,'Alameda dos Anjos',610,'-','Boa viagem',33334444,'Palmas','TO',8);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua quarenta e um',41,'Apto 41','Bairro A',99999999,'Florianópolis','SC',9);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua quarenta e dois',42,'-','Bairro B',55555555,'Macapá','AP',10);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua quarenta e três',43,'-','Bairro C',33333333,'Vitória','ES',11);
INSERT INTO Enderecos VALUES (DEFAULT,'Rua quarenta e quatro',44,'-','Bairro D',44444444,'Fortaleza','CE',12);

-- -----------------------------------------------------
-- A partir do cadastro de um paciente, é possível
-- consultar quais são as especialidades que estão
-- disponíveis para marcação através do comando abaixo
-- -----------------------------------------------------

SELECT  A.ID_Escala,A.Data_Agenda, A.Horario_Inicio, A.Unidade_Atendimento, P.ID_Profissional, P.Nome, P.Especializacao, A.Status_Profissional
FROM agenda_atendimentos A INNER JOIN profissionais_saude P 
ON A.Profissionais_saude_ID_Profissional=P.ID_Profissional 
WHERE Status_profissional='DISPONIVEL' ORDER BY A.Data_Agenda ASC;


-- -----------------------------------------------------
-- Tendo os IDs do Paciente, da escala e do profissional
-- profissional de saúde é possível simular a criação de
-- uma consulta a partir do comando abaixo (simulação
-- de criação de duas consultas)
-- -----------------------------------------------------

INSERT INTO consultas VALUES (DEFAULT,'MARCADA','Levar roupa de ginástica para realizacão de teste ergométrico','-',2,1,1);
INSERT INTO consultas VALUES (DEFAULT,'MARCADA','Sem observações','-',3,5,3);


-- -----------------------------------------------------
-- Ao marcar uma consulta, pode-se alterar o status do
-- Status_Profissional relacionado aos IDs escala que
-- agendadaque tiveram as consultas marcadas
-- ----------------------------------------------------

UPDATE agenda_atendimentos SET Status_Profissional = 'AGENDADA' WHERE ID_Escala=1;

UPDATE agenda_atendimentos SET Status_Profissional = 'AGENDADA' WHERE ID_Escala=5;

-- -----------------------------------------------------
-- Para mostrar as mudanças de status na tabela 
-- agenda_atendimentos será executado o comando abaixo:
-- -----------------------------------------------------

SELECT ID_Escala,
    Data_Agenda,
    Horario_Inicio,
    Duracao_Consulta,
    Status_Profissional,
    Unidade_Atendimento,
    Profissionais_saude_ID_Profissional
FROM agenda_atendimentos;

-- -----------------------------------------------------
-- Novamente podemos consultar quais as consultas 
-- disponíveis na agenda e pode-se observar 
-- que as consultas marcadas não estão mais aparecendo.
-- -----------------------------------------------------

SELECT  A.ID_Escala,A.Data_Agenda, A.Horario_Inicio, A.Unidade_Atendimento, P.ID_Profissional, P.Nome, P.Especializacao, A.Status_Profissional
FROM agenda_atendimentos A INNER JOIN profissionais_saude P 
ON A.Profissionais_saude_ID_Profissional=P.ID_Profissional 
WHERE Status_profissional='DISPONIVEL' ORDER BY A.Data_Agenda ASC;


-- -----------------------------------------------------
-- Segue agora o comando para verificar os dados das
-- consultas marcadas
-- -----------------------------------------------------

SELECT ID_Consulta, Status_Consulta, Observacoes,  Registro_Consulta, Paciente_ID_Paciente, Agenda_Atendimento_ID_Escala,Agenda_Atendimento_Profissionais_saude_ID_Profissional FROM consultas WHERE Status_Consulta = 'MARCADA';

-- -----------------------------------------------------
-- Agora faremos a simulação de inclusão de registro de
-- consulta de um paciente e a mudança de status para 
-- realizada
-- -----------------------------------------------------

UPDATE consultas SET Registro_Consulta = 'O paciente deve receber durante 180 dias os tratamentos de pressão alta e arritímia cardiaca. Próxima consulta deve ser agendada de para 30 dias antes do final do tratamento' WHERE ID_Consulta=1;
UPDATE consultas SET Status_Consulta = 'REALIZADA' WHERE ID_Consulta=1;

-- -----------------------------------------------------
-- Para verificar se o registro foi realizado na 
-- consulta correta pode-se utilizar o comando abaixo
-- -----------------------------------------------------

SELECT ID_Consulta, Status_Consulta, Observacoes,  Registro_Consulta, Paciente_ID_Paciente, Agenda_Atendimento_ID_Escala,Agenda_Atendimento_Profissionais_saude_ID_Profissional FROM consultas WHERE ID_Consulta = 1;
-- -----------------------------------------------------
-- Agora vamos simular a criação de um tratamento a
-- partir dos dados da consulta.
-- -----------------------------------------------------

INSERT INTO Tratamentos VALUES (DEFAULT,'Pressão alta e arritimia','Tratamento para controle de pressão alta e arritímia cardiaca.',180,1,2,1,1,'2024-06-15');

-- -----------------------------------------------------
-- O comando abaixo irá mostrar todos os do tratamento
-- inserido.
-- -----------------------------------------------------

SELECT `tratamentos`.`ID_Tratamento`,
    `tratamentos`.`Nome`,
    `tratamentos`.`Descricao`,
    `tratamentos`.`Duracao_Dias`,
    `tratamentos`.`Consultas_ID_Consulta`,
    `tratamentos`.`Consultas_Paciente_ID_paciente`,
    `tratamentos`.`Consultas_Agenda_Atendimento_ID_Escala`,
    `tratamentos`.`Consultas_Agenda_Atendimento_Profissionais_saude_ID_Profissional`,
    `tratamentos`.`Inicio_Tratamento`
FROM `cuidabem2.0`.`tratamentos` WHERE ID_Tratamento=1;


-- -----------------------------------------------------
-- Agora vamos verificar os medicamentos disponíveis
-- -----------------------------------------------------
SELECT `medicamentos`.`ID_Medicamento`,
    `medicamentos`.`Nome`,
    `medicamentos`.`Composicao`,
    `medicamentos`.`Quantidade_Estoque`,
    `medicamentos`.`Quantidade_Pedido`
FROM `cuidabem2.0`.`medicamentos`;


-- -----------------------------------------------------
-- Agora serão inseridos na tabela Tratamentos has Medi-
-- camentos os medicamentos a partir do cadastro prévio 
-- da tabela medicamentos associados ao tratamento.
-- -----------------------------------------------------

INSERT INTO Tratamentos_has_Medicamentos VALUES (1,1);
INSERT INTO Tratamentos_has_Medicamentos VALUES (1,5);

-- -----------------------------------------------------
-- Por último, segue comando para gerar o resumo do que
-- consiste o tratamento.
-- -----------------------------------------------------


SELECT T.ID_Tratamento, T.Nome, T.Descricao, T.Duracao_Dias, M.ID_Medicamento, M.Nome, M.Composicao FROM tratamentos T INNER JOIN (tratamentos_has_medicamentos INNER JOIN medicamentos M ON Medicamentos_ID_Medicamento=ID_Medicamento) ON ID_Tratamento = Tratamentos_ID_Tratamento WHERE T.ID_Tratamento=1;