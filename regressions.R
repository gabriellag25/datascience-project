#==Hot Girl Analysis 2============================================================

# setting working directory
setwd("C:/Users/gabri/Documents/MATH4100-DS/datascience-project")

# cleaning environment
rm(list = ls())

# loading packages
library(tidyverse)
library(sandwich)
library(lmtest)
library(car)
library(xtable)
library(modelsummary)


df_bills <- read.csv('df_primary.csv')

# slimming df to only necessary variables
df_slim <- df_bills %>% select(-substitute_sponsors,
                               -subjects_changed,
                               -committees,
                               -money_appropriated,
                               -final_chamber,
                               -session_id,
                               -co_sponsors,
                               -floor_sponsor,
                               -sponsor,
                               -sponsor_id,
                               -last_action,
                               -last_action_owner,
                               -num_substitutes,
                               -short_title,
                               -subjects,
                               -active_version,
                               -money_sum,
                               -inflation,
                               -cospon1)
