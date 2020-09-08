#instalando pacote
devtools::install_github("felipelbhering/cursor4ds2analiseames", 
                         force= TRUE)

#carregando dados
df_ames = readr::read_rds("./data_raw/ames.rds")


#chamando funcoes
cursor4ds2analiseames::sumarizar_venda_media(df_ames, 
                                             nome_coluna="venda_condicao")
cursor4ds2analiseames::pegar_num_nas(df_ames, "piscina_qualidade")
cursor4ds2analiseames::pegar_num_nas(df_ames, "piscina_qualidade",
                                     prop = TRUE)

