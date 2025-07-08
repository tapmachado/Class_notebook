---
  title: "Aula 3 - Testes T (pareados e não pareados)"
---
  
  ## O que aprendemos na Aula 3?
  
  Nesta aula, o foco foi aprender a aplicar o **Teste t** em diferentes contextos:
  
  ### Tipos de Teste T abordados:
  1. **Amostras independentes**: Comparação entre dois grupos distintos
2. **Amostras pareadas**: Comparação antes/depois no mesmo grupo

### Análises complementares:
- Teste de normalidade (Shapiro-Wilk)
- Teste de homogeneidade de variâncias (Bartlett, Levene)

### Exemplo prático

```{r}
# Teste t para amostras independentes
resultado_ttest <- t.test(valor ~ grupo, data = meus_dados)

# Visualizando resultados
print(resultado_ttest)

# Teste de normalidade
shapiro.test(meus_dados$valor)

# Gráfico com valor de p
ggplot(meus_dados, aes(x = grupo, y = valor)) +
  geom_boxplot() +
  ggpubr::stat_compare_means(method = "t.test")