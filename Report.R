library(shiny)
library(ggplot2)
library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)
library(scales)

# Load necessary libraries
library(dplyr)

# Read the data
data <- read.csv("https://github.com/bkrai/R-files-from-YouTube/raw/main/vehicle.csv")


# Perform t-test for Average Labour Cost for different states
t_test_1 <- t.test(NewCases ~ Location, data = data, subset = Location %in% c("Massachusetts", "California"))

# Print the results
print(t_test_us_brazil)

# Perform ANOVA test for all locations
anova_location <- aov(NewCases ~ Location, data = data)

# Print the results
print(summary(anova_location))

#Objective:
#** To investigate whether there is a significant difference in the Labour Cost between Massachusetts and the California.

Hypotheses:
  
  Null Hypothesis (H0): There is no significant difference in the Labour Cost between Massachusetts and the California.

Alternative Hypothesis (H1): There is a significant difference in the Labour Cost between Massachusetts and the California.


Analysis:
  
  An analysis of variance (ANOVA) was conducted to determine if there is a significant difference in the Labour Cost between Massachusetts and the California. The ANOVA results indicated a significant difference in the mean labour cost of 2 states between the two states (F(1, 52480) = 591.3, p < 0.001).
A Welch's two-sample t-test was performed to further examine the difference in mean labour cost of two states. The results of the t-test showed a significant difference in mean new cases between Massachusetts (M = 34,075.08, SD = unknown) and the California (M = 71,483.25, SD = unknown), t(881.25) = -13.802, p < 0.001, 95% CI [-42,727.83, -32,088.50].


Managerial Implications:

The findings suggest that there is a significant difference in the in mean labour cost of two states i.e. Massachusetts and California
The results of this study indicate that the average labour cost varies significantly between Massachusetts and California. This implies that managers should consider the location of their operations and the impact of labour cost on their profitability and competitiveness. Managers may also explore the factors that contribute to the labour cost difference, such as labour productivity, skill level, wage rate, and labour market conditions.

Conclusion:
Based on the results of the ANOVA and t-test, we reject the null hypothesis and conclude that there is a significant difference in the in the Labour Cost between Massachusetts and the California. Further investigation and targeted interventions are needed to address the disparities observed in the Labour charges between two states.*#
               
