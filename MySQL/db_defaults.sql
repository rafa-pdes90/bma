INSERT INTO evento_tipo (nome, codigo) VALUES ('Balada', 'tipo_balada'), ('Aniversário', 'tipo_niver'), ('Cinema', 'tipo_cine'), ('Sair para jantar', 'tipo_jantar'), ('Jogar!!!', 'tipo_jogatina');
INSERT INTO pessoa_genero_sexual (nome, codigo) VALUES ('Homem', 'gen_homem'), ('Mulher', 'gen_mulher'), ('Outro', 'gen_outro'), ('Sem mais..', 'gen_smais');
INSERT INTO evento_regra (nome, codigo) VALUES ('Publico', 'visib_publico'), ('Privado', 'visib_privado'), ('Só amigos', 'visib_semi_privado'), ('Amigos de amigos', 'visib_semi_publico');
INSERT INTO participacao_status (nome, codigo) VALUES ('Convidado', 'status_convidado'), ('Participante', 'status_participante'), ('Excluído', 'status_excluido'), ('Surpresa', 'status_surpresa'), ('Recusado', 'status_recusado');
