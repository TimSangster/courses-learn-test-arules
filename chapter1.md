---
title: 'Chapter Title Here'
description: 'Chapter description goes here.'
free_preview: true
---

## Example coding exercise

```yaml
type: NormalExercise
key: 2bafef99a3
lang: r
xp: 100
skills: 1
```

This is an example exercise.

`@instructions`


`@hint`


`@pre_exercise_code`
```{r}
# Loading required packages
library(arules)
library(tidyverse)

# Importation of the dataset
Online_Retail_2011_Q1 = read.csv("https://assets.datacamp.com/production/repositories/5023/datasets/a817bbcac6df7557fea62098386d784f52267673/Online_Retail_2011_Q1.csv", header = TRUE)

# Work with clean dataset
Online_Retail_clean = Online_Retail_2011_Q1 %>% filter(complete.cases(.))

# Create transactional dataset
data_list = split(Online_Retail_clean$Description, Online_Retail_clean$InvoiceNo)
Online_trx = as(data_list, "transactions")
```

`@sample_code`
```{r}
# Apply the apriori function to the Online retail dataset
rules_online = apriori(Online_trx,
                    parameter = list(supp = 0.01, conf = 0.8, minlen = 2))

# Inspect the first 5 rules
inspect(head(rules_online, 5))
```

`@solution`
```{r}
# Apply the apriori function to the Online retail dataset
rules_online = apriori(Online_trx,
                    parameter = list(supp = 0.01, conf = 0.8, minlen = 2))

# Inspect the first 5 rules
inspect(head(rules_online, 5))
```

`@sct`
```{r}

```
