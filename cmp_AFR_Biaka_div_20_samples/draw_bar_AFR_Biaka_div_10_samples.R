####
library(ggplot2)


common_ggplot2_xlab_ylab <- theme_bw() + theme(#axis.text.x=element_blank(),
  axis.text.y=element_text(size=15, colour = "black"),
  #axis.text.x=element_text(size=15, colour = "black", angle = 45, vjust = 1, hjust=1),
  axis.text.x=element_text(size=15, colour = "black"),
  axis.title.y=element_text(size=25),
  axis.title.x=element_text(size=25),
  legend.title = element_blank(),#text(size=16),
  #legend.position = c(0.85, 0.85),
  #legend.position = "none",
  legend.position = c(0.25, 0.9),
  legend.text = element_text(size=15),
  #                                    legend.key = element_blank(),
  plot.margin=unit(c(0.1,0.1,0,0.1),"cm"),
  plot.title=element_blank()) +
  theme(    panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            #           legend.position="top",
            legend.title=element_blank(),
            #           legend.justification=c(1,0), legend.position=c(1,0.01),
            legend.key.height = unit(1.0, "cm"),
            legend.key.width = unit(0.75, "cm")) +
  theme(panel.border = element_blank(),
        plot.background = element_blank(),
        strip.background =element_blank(),
        strip.text = element_text(size = 15, colour = "black"),
        axis.line.x = element_line(size = 0.3, linetype = "solid", colour = "black"),
        axis.line.y = element_line(size = 0.3, linetype = "solid", colour = "black"))



#####

df2 <- read.csv("/Users/simonchu/research/projects/papers/SVA_paper/rslts_figures_NAR_round1/results/cmp_AFR_Biaka_div_20_samples/cmp_SVA_ins_cnt_AFR_Biaka_Div.csv", header = T, sep = ",") #
df2


p <- ggplot(data=df2, aes(x=Type, y=Count, fill=Type, label = Count ))+
  geom_bar(stat="identity") + 
  geom_text(size = 10, position = position_stack(vjust = 0.5)) +
  xlab("Types") + 
  ylab("Number of SVA insertions")
p <- p + common_ggplot2_xlab_ylab
p +  scale_fill_brewer(palette = "Dark2")

#
####
