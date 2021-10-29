library("tidyverse")

transport_data <- read_csv("data/transport_data.csv")

transport_data %>%
  mutate(running.total = cumsum(number.of.items)) %>%
  View()

transport_data %>%
  arrange(date) %>%
  group_by(receiver.city) %>%
  mutate(running.total = cummean(number.of.items)) %>%
  filter(cumany(number.of.items >453)) %>%
  summarise(events.after.peak = n()) %>%
  ggplot(aes(x = receiver.city,
             y = events.after.peak)) + 
            geom_col(fill = "red") + coord_flip()



transport_data %>%
  arrange(date) %>%
  group_by(receiver.city) %>%
  mutate(running.total = cummean(number.of.items)) %>%
  filter(cumall(number.of.items < 453)) %>%
  summarise(events.before.peak = n())


transport_data %>%
  arrange(date) %>%
  group_by(receiver.city) %>%
  mutate(running.total = cummean(number.of.items)) %>%
  filter(cumany(number.of.items >453)) %>%
  summarise(events.after.peak = n())