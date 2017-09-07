

library(ggplot2)

library(readr)

goldheap <- read_csv("C:/Users/mmccrae/Downloads/Gold Heap Leach - Geography - Gold Heap Leach - Geography SCRUBBED.csv")

goldheap2 <- goldheap[c(1:64), ]


ggplot(goldheap2, aes(x=goldsustain, y=reorder(proptery, goldsustain), color=Country)) +
  geom_point(size=3) + # Use a larger dot
  theme_bw() +
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(colour="grey60", linetype="dashed"))


############### based on page 46 https://ase.tufts.edu/bugs/guide/assets/R%20Graphics%20Cookbook.pdf


library(ggplot2)

library(readr)

goldheap <- read_csv("C:/Users/mmccrae/Downloads/Gold Heap Leach - Geography - Gold Heap Leach - Geography SCRUBBED.csv")

goldheap2 <- goldheap[c(1:64), ]


ggplot(goldheap2, aes(x=goldsustain, y=reorder(proptery, -goldsustain))) +
  geom_segment(aes(yend=proptery), xend=0, colour="grey50") +
  geom_text(label=goldheap2$goldsustain, hjust = -.3) +
  geom_point(size=2)+
  theme(panel.grid.major.y = element_blank()) +
  labs(title = "All-in sustaining costs by property") +
  labs(x = "All-in sustaining costs-$/oz. tr. gold") +
  labs(y = NULL) 
#  scale_x_continuous(labels=dollar) 
  




