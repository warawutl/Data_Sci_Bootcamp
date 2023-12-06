rps <- function() {
    options <- c("rock", "paper", "scissors")
    score <- list(win = 0, loss = 0, tie = 0)
    
    cat("Rock Paper Scissors Game\n")
    
    while (TRUE) {
        cat("Options:\n")
        for (i in 1:length(options)) {
            cat(i, " - ", options[i], "\n")
        }
        
        cat("Enter your choice (1-3) or 'q' to quit:\n ")
        choice <- readLines("stdin", n=1)
        
        if (choice == 'q') {
            break
        }
        
        user_choice <- as.integer(choice)
        
        if (is.na(user_choice) || user_choice < 1 || user_choice > 3) {
            cat("Invalid choice. Please choose a number between 1 and 3.\n")
            next
        }
        
        pc_choice <- sample(options, size = 1)
        result <- switch(
            paste(options[user_choice], pc_choice),
            "rock rock" = "tie",
            "rock scissors" = "win",
            "rock paper" = "loss",
            "scissors rock" = "loss",
            "scissors scissors" = "tie",
            "scissors paper" = "win",
            "paper rock" = "win",
            "paper scissors" = "loss",
            "paper paper" = "tie",
            "invalid" = "invalid"
        )
        
        if (result == "invalid") {
            cat("Invalid choice. Please choose a number between 1 and 3.\n")
            next
        }
        
        cat("Your choice", options[user_choice],"\n")           
      cat("BOT choice", pc_choice, "\n" )
        cat("so, you ", result, "!\n")
        score[[result]] <- score[[result]] + 1
    }
    
    cat("Score\n")
    cat("YOUR SCORE", score$win, "\n")
    cat("BOT SCORE", score$loss, "\n")
    cat("Tie", score$tie, "\n")
    cat("See you next time\n")
}

rps()
