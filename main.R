library(data.table)

DT <- readRDS('./datasets/DT_rev02.rds')

colores <- c('orange','cyan','magenta','green')
colors <- colores[as.factor(DT$experience_level)]

marcas <- c(15,16,17,18)
marks <- marcas[as.factor(DT$experience_level)]

dotchart(DT$salary_in_usd,
         groups = DT$work_year,
         color = colors,
         #pch = 20,
         pch = marks,
         cex = 0.8
)

legend('bottomright',
       legend = c('EN','EX','MI','SE'),
       col = colores,
       #col = c('orange','cyan','magenta','green'),
       pt.cex = 2,
       pch = marcas
)

# veamos 1 variable num y 3 categ
colores <- c('green','orange')
colores <- colores[as.factor(DT$work_year)]

marcas <- c(15,16,17)
marcas <- marcas[as.factor(DT$remote_ratio)]

dotchart(DT$salary_in_usd,
         groups = DT$experience_level,
         color = colores, # work_year
         pch = marcas, # remote_ratio
         cex = 0.8
)

legend('bottomright',
       legend = c('ad2022','2022ec','remote 0','remote 50','remote 100'),
       col = c('green','orange','black','black','black'),
       pch = c(20, 20, 15, 16, 17),
       pt.cex = 2
)
