#Austin Clark
#A91063616

random_walk <- function(p){
  v = c(1,-1)
  x = numeric(100)
  count = 0
  p2 <-c(p, 1-p)
  for( i in 1:100){
    count = count + sample(v,size = 1, replace = TRUE, prob = p2 )
    x[i]= count
  }
  return(x)
}

prob_1 <- random_walk(.5) 
plot.ts(prob_1, x = "time", y = "")
