---
  title: "Aula 5 - ANOVA e Comparações de Médias"
---
  
  ## Análise de Variância (ANOVA)
  
  Nesta aula trabalhamos com:
  
  ### Modelos de ANOVA
  - ANOVA de uma via
- Diagnóstico de pressupostos
- Comparações múltiplas de médias

### Pacotes utilizados:
- `agricolae` para testes post-hoc
- `emmeans` para comparações de médias
- `report` para sumarização automática

### Exemplo de código

```{r}
# Modelo ANOVA
modelo <- aov(crescimento ~ tratamento, data = dados_fungo)

# Diagnóstico
par(mfrow = c(2, 2))
plot(modelo)

# Teste post-hoc
library(agricolae)
HSD.test(modelo, "tratamento", console = TRUE)