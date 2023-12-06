library(RPostgreSQL)
library(tidyverse)

con <- dbConnect(PostgreSQL(),
                 host = "floppy.db.elephantsql.com",
                 port = 5432,
                 user = "wrbtlcwo",
                 password = "WCZBmnjuu-FuzXkclpUOYNg9LHn3VQSQ",
                 dbname = "wrbtlcwo")

pizza_menu <- data.frame(
  id = 1:3,
  name = c("hawaiian", "hotdog", "cheese")
)

dbWriteTable(con, "pizza_menu", pizza_menu, overwrite = TRUE)

customers <- data.frame(
  customers_id = 1:6,
  name = c("saac", "arm", "rong", "tangmae", "guy", "tangkwa"),
  city = c("chiangmai", "narathiwat", "bangkok", "chiangmai", "chonburi", "bangkok")
)

dbWriteTable(con, "customers", customers, overwrite = TRUE)

daywork <- data.frame(
  day_id = 1:7,
  day = c("sun", "mon", "tue", "wed", "thu", "fri", "sat")
)

dbWriteTable(con, "daywork", daywork, overwrite = TRUE)

ordered <- data.frame(
  ordered_id = 1:15,
  customers_id = c(3, 2, 1, 2, 1, 4, 2, 3, 3, 2, 1, 2, 3, 1, 4),
  ordered_date = as.Date(c("2023-09-03", "2023-09-04", "2023-09-04", "2023-09-05", "2023-09-05", "2023-09-06", "2023-09-07", "2023-09-07", "2023-09-08", "2023-09-08", "2023-09-08", "2023-09-09", "2023-09-09", "2023-09-09", "2023-09-09")),
  day_id = c(1, 2, 2, 3, 3, 4, 5, 5, 6, 6, 6, 7, 7, 7, 7)
)

dbWriteTable(con, "ordered", ordered, overwrite = TRUE)

order_detail <- data.frame(
  ordered_id = c(1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 6, 6, 6, 7, 8, 9, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 15, 15),
  menu_name = c("pizza", "chocolate", "hamburger", "icecream", "steak", "icecream", "pizza", "icecream", "hamburger", "icecream", "chocolate", "steak", "icecream", "chocolate", "icecream", "chocolate", "pizza", "chocolate", "hamburger", "icecream", "steak", "icecream", "pizza", "icecream", "hamburger", "icecream", "chocolate", "steak", "icecream", "chocolate", "icecream", "chocolate", "chocolate"),
  menu_price = c(10, 5, 9, 8, 15, 8, 10, 8, 9, 8, 5, 15, 8, 5, 8, 5, 10, 5, 9, 8, 15, 8, 10, 8, 9, 8, 5, 15, 8, 5, 8, 5, 8),
  quantity = c(1, 1, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 2, 1, 1, 1, 2, 2, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 1, 2)
)

dbWriteTable(con, "order_detail", order_detail, overwrite = TRUE)

menu <- data.frame(
  menu_id = 1:5,
  menu_name = c("pizza", "hamburger", "steak", "icecream", "chocolate"),
  menu_price = c(10, 9, 15, 8, 5)
)

dbWriteTable(con, "menu", menu, overwrite = TRUE)

dbGetQuery(con, "select * from order_detail")

dbDisconnect(con)
