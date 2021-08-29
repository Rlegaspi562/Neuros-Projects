# An Exploratory Mess
# Messing around, trying our Data explorer

library(DataExplorer)

eval_visit <- eval_visit %>% rename(target_inj = `Target of injection`)

eval_visit %>% 
  create_report(
    output_file = "Evaluation_Visit_Report",
    output_dir  = "Pain Reduction Analysis",
    y           = 'target_inj',
    report_title = "EDA Report - Evaluation Visit Report"
  )


#Data Introduction

eval_visit %>% introduce()

eval_visit %>% plot_intro()



#Missing Values 

eval_visit %>%  plot_missing()

eval_visit %>%  plot_histogram()


#Continuous Features

eval_visit %>% plot_density()

eval_visit %>% plot_histogram()


#Categorical Features

eval_visit %>%  plot_bar()



#Relationships

eval_visit %>%  plot_correlation(maxcat = 5)
#try correlation_funnel or Correlation_Funnel()


