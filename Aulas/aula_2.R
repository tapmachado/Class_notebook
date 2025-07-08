
**2. aula_2.qmd**
  ```markdown
---
  title: "Aula 2 - Importação de dados e primeiros gráficos"
---
  
  ## O que aprendemos na Aula 2?
  
  Na segunda aula, aprendemos como importar dados externos, como arquivos `.xlsx` (Excel) e também usando planilhas do Google Sheets.

### Principais tópicos:
- Importação de dados com `readxl` e `gsheet`
- Visualização inicial de dados com `glimpse()` e `summary()`
- Criação de boxplots para análise exploratória
- Operações básicas com `dplyr`

### Exemplo de importação de dados

```{r}
# Instalando pacotes (se necessário)
# install.packages(c("readxl", "gsheet"))

library(readxl)
library(gsheet)

# Importando do Excel
dados_excel <- read_excel("dados/meus_dados.xlsx")

# Importando do Google Sheets
url_gsheet <- "https://docs.google.com/spreadsheets/d/1XYZ..."
dados_gsheet <- gsheet2tbl(url_gsheet)

# Visualização rápida
glimpse(dados_excel)