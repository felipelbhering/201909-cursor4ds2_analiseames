#carregando bibliotecas
library(devtools)

#carregando dados
df_ames = readr::read_rds("./data/ames.rds")


#instalando pacote
install_github("felipelbhering/cursor4ds2analiseames", force= TRUE)

#chamando funcoes
cursor4ds2analiseames::sumarizar_venda_media (df_ames, nome_coluna="venda_condicao")
cursor4ds2analiseames::pegar_num_nas(df_ames, "piscina_qualidade")
cursor4ds2analiseames::pegar_num_nas(df_ames, "piscina_qualidade", prop = TRUE)

