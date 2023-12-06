# "5 question about flights dataset"
## 1. what's the most popular destination of all time?
pop_dest <- flights %>%
 count(dest) %>%
 arrange(desc(n)) %>%
 head()
> View(pop_dest)

## 2. most flight by month

most_flights_by_month <- flights %>%
  group_by(month) %>%
  summarise(total_flights = n()) %>%
  arrange(desc(total_flights))

## 3. most flight by quater
most_flights_by_quarter <- flights %>%
  group_by(quarter = quarter(month)) %>%
  summarise(total_flights = n()) %>%
  arrange(desc(total_flights))

4. avg delay
avg_delay_by_carrier <- flights %>%
  group_by(carrier) %>%
  summarise(avg_delay = mean(dep_delay, na.rm = TRUE)) %>%
  arrange(desc(avg_delay))

5. most carrier flight 

most_flights_by_carrier <- flights %>%
  group_by(carrier) %>%
  summarise(total_flights = n()) %>%
  arrange(desc(total_flights)) %>%
  left_join(airlines, by = "carrier") %>%
  select(carrier, name, total_flights)
