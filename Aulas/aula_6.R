---
  title: "Aula 6 - Transformações e Regressão Linear"
---
  
  ## Tópicos principais
  
  ### Parte 1: Transformações de dados
  - Transformação Box-Cox
- Transformação logarítmica
- Quando e por que transformar dados

### Parte 2: Regressão Linear
- Modelos lineares simples
- Diagnóstico de modelos
- Exemplo com dados de estande de plantas

### Exemplo de regressão

```{r}
library(lme4)

# Modelo linear simples
modelo_lm <- lm(estande ~ concentracao, data = dados_plantas)

# Sumário
summary(modelo_lm)

# Gráfico de diagnóstico
plot(modelo_lm)

# Predições
novos_dados <- data.frame(concentracao = seq(0, 100, by = 10))
predict(modelo_lm, newdata = novos_dados)