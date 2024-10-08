install.packages("meta")
install.packages('dmetar')

## Morning Exercise ##

library(readxl)
morning_baseline_meandifference <- read_excel("C:/Users/kmlyons/OneDrive - University of Dundee/MASTERS/METFORTIME Study (Brendan)/DATA SETS FOR BRENDAN/Mean Difference Forest Plots/morning_baseline_meandifference.xlsx")
View(morning_baseline_meandifference)
attach(morning_baseline_meandifference)

SE_morning <- pooled_SD*sqrt(1/n_MORNING + 1/n_BASELINE)

require(meta)

morning_m.cont <- metacont(n.e = n_MORNING, mean.e = MORNING_MEAN, sd.e = MORNING_SD, n.c = n_BASELINE, mean.c = BASELINE_MEAN, sd.c = BASELINE_SD, studlab = `Time (mins)`, data = morning_baseline_meandifference, sm="MD", method.sd = "shi", fixed=FALSE, random = TRUE, method.tau = "REML", hakn=TRUE, title = "Morning Vs Baseline Mean DIfference", label.left = "Favours Morning", label.right = "Favours Baseline")

forest(morning_m.cont, col.diamond = "royalblue", xlim=c(-3,3))
summary(morning_m.cont)
detach(morning_baseline_meandifference)


## Evening Exercise ##

library(readxl)
evening_baseline_meandifference <- read_excel("C:/Users/kmlyons/OneDrive - University of Dundee/MASTERS/METFORTIME Study (Brendan)/DATA SETS FOR BRENDAN/Mean Difference Forest Plots/evening_baseline_meandifference.xlsx")
View(evening_baseline_meandifference)
attach(evening_baseline_meandifference)
require(meta)
evening_m.cont <- metacont(n.e = n_EVENING, mean.e = EVENING_MEAN, sd.e = EVENING_SD, n.c = n_BASELINE, mean.c = BASELINE_MEAN, sd.c = BASELINE_SD, studlab = `Time (mins)`, data = evening_baseline_meandifference, sm="MD", method.sd = "shi", fixed=FALSE, random = TRUE, method.tau = "REML", hakn=TRUE, title = "Evening Vs Baseline Mean DIfference", label.left = "Favours Evening", label.right = "Favours Baseline")

forest(evening_m.cont, col.diamond = "royalblue", xlim=c(-3,3))

summary(evening_m.cont)



