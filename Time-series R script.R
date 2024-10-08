## Time-Series Week 1-2 ##

library(readxl)
Morning_First_24hr <- read_excel("C:/Users/kmlyons/OneDrive - University of Dundee/MASTERS/METFORTIME Study (Brendan)/DATA SETS FOR BRENDAN/24hr Time-Series Plots/Morning First 24hr.xlsx", 
                                   +     sheet = "Morning First Week 1-2")
View(Morning_First_24hr)
Morning_First_W12 <- Morning_First_24hr
attach(Morning_First_W12)
library(ggplot2)
morninginterventionW12 <- ggplot(Morning_First_W12, aes(x=`Time (mins)`, y=Glucose)) + geom_line(aes(colour=Participant), lwd=0.75) + labs(x="Time of Day (minutes)", y="Blood Glucose (mmol/L)") + geom_vline(xintercept = 1425, col="black", lwd=1) + annotate("rect", xmin = 2865, xmax = 2895, ymin = -Inf, ymax = Inf, fill='grey') + annotate("text", x=240, y=23, label="Baseline", col="black", size=5) + annotate("text", x=2500, y=23, label="Morning Exercise", size=5, col="black") + annotate("text", x=3900, y=23, label="Evening Exercise", col="black", size=5) + scale_x_continuous(expand = c(0,0), breaks = seq(0,4350,by=240)) + scale_y_continuous(expand = c(0,0), limits = c(0,25))

detach(Morning_First_W12)
library(readxl)
Evening_first_24hr <- read_excel("C:/Users/kmlyons/OneDrive - University of Dundee/MASTERS/METFORTIME Study (Brendan)/DATA SETS FOR BRENDAN/24hr Time-Series Plots/Evening first 24hr.xlsx", 
                                   +     sheet = "Evening First Week 1-2")
View(Evening_first_24hr)
Evening_First_W12 <- Evening_first_24hr
attach(Evening_First_W12)
eveninginterventionW12 <- ggplot(Evening_First_W12, aes(x=`Time (mins)`, y=Glucose)) + geom_line(aes(colour=Participant), lwd=0.75) + labs(x="Time of Day (minutes)", y="Blood Glucose (mmol/L)") + geom_vline(xintercept = 1425, col="black", lwd=1) + annotate("rect", xmin = 2865, xmax = 2895, ymin = -Inf, ymax = Inf, fill='grey') + annotate("text", x=240, y=23, label="Baseline", col="black", size=5) + annotate("text", x=2500, y=23, label="Evening Exercise", size=5, col="black") + annotate("text", x=3900, y=23, label="Morning Exercise", col="black", size=5) + scale_x_continuous(expand = c(0,0), breaks = seq(0,4350,by=240)) + scale_y_continuous(expand = c(0,0), limits = c(0,25))
grid.arrange(morninginterventionW12 + ggtitle("Morning Exercise Protocol First (Week 1-2)"), eveninginterventionW12 + ggtitle("Evening Exercise Protocol First (Week 1-2)"), ncol=1)


## Time-Series Week 5-6 ##

library(readxl)
Morning_First_24hr <- read_excel("C:/Users/kmlyons/OneDrive - University of Dundee/MASTERS/METFORTIME Study (Brendan)/DATA SETS FOR BRENDAN/24hr Time-Series Plots/Morning First 24hr.xlsx", 
                                   +     sheet = "Morning First Week 5-6 ")
View(Morning_First_24hr)
Morning_First_W56 <- Morning_First_24hr
morninginterventionW56 <- ggplot(Morning_First_W56, aes(x=`Time (mins)`, y=Glucose)) + geom_line(aes(colour=Participant), lwd=0.75) + labs(x="Time of Day (minutes)", y="Blood Glucose (mmol/L)") + geom_vline(xintercept = 1425, col="black", lwd=1) + annotate("rect", xmin = 2865, xmax = 2895, ymin = -Inf, ymax = Inf, fill='grey') + annotate("text", x=240, y=23, label="Baseline", col="black", size=5) + annotate("text", x=2500, y=23, label="Morning Exercise", size=5, col="black") + annotate("text", x=3900, y=23, label="Evening Exercise", col="black", size=5) + scale_x_continuous(expand = c(0,0), breaks = seq(0,4350,by=240)) + scale_y_continuous(expand = c(0,0), limits = c(0,25))

library(readxl)
Evening_first_24hr <- read_excel("C:/Users/kmlyons/OneDrive - University of Dundee/MASTERS/METFORTIME Study (Brendan)/DATA SETS FOR BRENDAN/24hr Time-Series Plots/Evening first 24hr.xlsx", 
                                   +     sheet = "Evening First Week 5-6")
View(Evening_first_24hr)
Evening_First_W56 <- Evening_first_24hr
attach(Evening_First_W56)
eveninginterventionW56 <- ggplot(Evening_First_W56, aes(x=`Time (mins)`, y=Glucose)) + geom_line(aes(colour=Participant), lwd=0.75) + labs(x="Time of Day (minutes)", y="Blood Glucose (mmol/L)") + geom_vline(xintercept = 1425, col="black", lwd=1) + annotate("rect", xmin = 2865, xmax = 2895, ymin = -Inf, ymax = Inf, fill='grey') + annotate("text", x=240, y=23, label="Baseline", col="black", size=5) + annotate("text", x=2500, y=23, label="Evening Exercise", size=5, col="black") + annotate("text", x=3900, y=23, label="Morning Exercise", col="black", size=5) + scale_x_continuous(expand = c(0,0), breaks = seq(0,4350,by=240)) + scale_y_continuous(expand = c(0,0), limits = c(0,25))
grid.arrange(morninginterventionW56 + ggtitle("Morning Exercise Protocol First (Week 5-6)"), eveninginterventionW56 + ggtitle("Evening Exercise Protocol First (Week 5-6)"), ncol=1)
