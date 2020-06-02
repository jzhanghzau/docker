FROM r-base

RUN R -e 'install.packages(c("SILGGM"))'
RUN R -e 'install.packages(c("bnlearn"))'
 
