##Menu
pizzaId <- c("P1", "P2", "P3", "P4", "P5")
pizzaName <- c("Italian", "NYC", "Chicago", "Thailand", "Hawaiian")
pizzaS <- c(15, 15, 20, 18, 15)
pizzaM <- c(18, 18, 23, 20, 18)
pizzaL <- c(20, 20, 25, 25, 20)
pizza <- data.frame(pizzaId, pizzaName, pizzaS, pizzaM, pizzaL)
total_price <- 0 #forsumprice

sum <- data.frame(orderName = character(0), orderSize = character(0), orderPrice = numeric(0))
#I create Empty dataframe reserve for summary order

Order <- function(){

  cat("----------------------------------------------------------------\n")
  cat("Menu\n")
  cat("----------------------------------------------------------------\n")
  print(pizza)
  cat("----------------------------------------------------------------\n")
  cat("type [Q] for Quit\n")
  cat("----------------------------------------------------------------\n")
  cat("Please enter Pizza ID:")
  
  customer_order <- readLines("stdin", n = 1)
  customer_order <- toupper(customer_order)
  
  if(customer_order == "Q"){
   cat("----------------------------------------------------------------\n")
    cat("Have a nice day :)\n")
    return(0)
  }
  else if(customer_order %in% pizza$pizzaId){
    cat("----------------------------------------------------------------\n")
    cat("Your Order",paste(pizza[pizza$pizzaId == customer_order,1:2]))
    cat("\n")
    cat("----------------------------------------------------------------\n")
    return(customer_order)
  }
  else{
    cat("invalid pizzaID\n")
    cat("Please try again\n")
    return(Order())
  }
}


Size <- function(order){
  price <- 0
  cat("Choosing Size\n")
  cat("----------------------------------------------------------------\n")

  for(i in 1:length(pizza$pizzaId)){
    if(order == pizza$pizzaId[i]){  
      r <- i 
      break 
    }
  }
  
  print(pizza[r,2:5])
  cat("----------------------------------------------------------------\n")
  cat("Type [S] for Small\n")
  cat("Type [M] for Medium\n")
  cat("Type [L] for Large\n")
  cat("type [Q] for Quit\n")
  cat("Please Enter Size:\n")

  orderSize <- readLines("stdin", n = 1)
  orderSize <- toupper(orderSize)

  switch(orderSize,
        "Q" = { result <- c(0,0,0)
                return(result)},
        "S" = {price <- pizza[r,3]},
        "M" = {price <- pizza[r,4]},
        "L" = {price <- pizza[r,5]},
         {
          print("invalid size") 
          return(Size(order))
         }
  )
  result <- c(pizza$pizzaName[r],orderSize,price)
  return(result)
}

moreOrder <- function(){
  cat("----------------------------------------------------------------\n")
  cat("Anything else?\n")
  cat("Type [1] for more order [2] to Quit\n")
  cat("----------------------------------------------------------------\n")
  
  input <- readLines("stdin", n = 1)
  
  if(input == 1){
    return(1)
  }
  else if(input == 2){
    return(2)
  }
    else {
      cat("invalid value\n")
      return(moreOrder())
  }
}


while(TRUE){
  pizzaOrder = Order()
  if(pizzaOrder == 0) break
  Y = Size(pizzaOrder)
  if(Y[1] == 0) break 
  
  sum <- rbind(sum,Y) #summary order
  total_price <- total_price + as.numeric(Y[3])  #sumprice
  
  cat("----------------------------------------------------------------\n")
  print(sum)
  x <- moreOrder()
  if(x == 2){
    break
  }
}

#print
cat("----------------------------------------------------------------\n")
names(sum) <- c("pizzaName","Size","Price($)")

print(sum)
cat("----------------------------------------------------------------\n")

cat("Total Price: $", total_price, "\n")
cat("----------------------------------------------------------------\n")
