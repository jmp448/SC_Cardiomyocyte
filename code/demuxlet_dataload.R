library(stringr)

parent <- "/project2/gilad/reem/singlecellCM/round1/fulldata/"
coldays <- 3
cols <- 6
for (i in 1:coldays) {
  for (j in 1:cols) {
    
    demux <- read.table(paste0(parent, "CD", i, "/CD", i, "col", j, "/demux/hpCD", i, "col", j, "_demux.best"), header = T,
                        stringsAsFactors = F)
    
    assign(paste0("CD", i, "col", j, "_demux"), demux)
  }
}
rm(demux, i, j, parent, coldays, cols)

save.image(file="../data/demuxlet_data.RData")