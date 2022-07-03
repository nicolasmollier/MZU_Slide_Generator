
# function that checks for each element in a vector, if it is larger or smaller than
# a certain threshold value
larger_smaller_than <- function(vector, threshold, larger = TRUE){
  if(larger){
    vector > threshold
  } else if(!larger) {
    vector < threshold
  }
}

# return table with things that work well and that could be improved for a given ressort
ressort_begründungen <- function(df, ressort_name, one_column = FALSE){
  ressort_names <- df$ressort_group %>% 
    unique()
  if(ressort_name %in% ressort_names){
    ressort_temp <- df %>% 
      filter(ressort_group == ressort_name)%>% 
      select(1,3, 4)
    
    colnames(ressort_temp) <- c("ressort", "Was klappt gut?", "Was ist ausbaufähig?")
    assign(paste("ressort_", ressort_name), ressort_temp, parent.frame())
    
    if(one_column){
      ressort_output <- ressort_temp %>% 
        select(2:3) %>% 
        kable() %>% 
        column_spec(1, width_min = '7.8in') %>% 
        kable_styling(font_size = 12)
    } else{
      ressort_output <- ressort_temp %>% 
        select(2:3) %>% 
        kable() %>% 
        column_spec(1:2, width_min = '3.9in') %>% 
        kable_styling(font_size = 12)
    }
  } else {
    ressort_output <- NULL
  }
  
  
  
  return(ressort_output)
}



# return table with things that work well and that could be improved for a given ressortleiter
ressortleiter_begründungen <- function(df, ressort_name, one_column = TRUE){
  ressort_names <- df$ressort_group %>% 
    unique()
  if(ressort_name %in% ressort_names){
    ressortleiter_temp <- df %>% 
      filter(ressort_group == ressort_name)%>% 
      select(1,7)
    
    colnames(ressortleiter_temp) <- colnames(ressortleiter_temp) %>% 
      substring(4)
    
    assign(paste("ressortleiter_", ressort_name), ressortleiter_temp, parent.frame())
    
    if(one_column){
      ressortleiter_output <- ressortleiter_temp %>% 
        select(2) %>% 
        kable() %>% 
        column_spec(1, width_min = '7.8in') %>% 
        kable_styling(font_size = 12, full_width = TRUE)
    } else {
      ressortleiter_output <- ressortleiter_temp %>% 
        select(2) %>% 
        kable() %>% 
        column_spec(1:2, width_min = '3.9in') %>% 
        kable_styling(font_size = 12, full_width = TRUE)
    }
  } else {
    ressortleiter_output <- NULL
  }
  
  
  
  return(ressortleiter_output)
}
