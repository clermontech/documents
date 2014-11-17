FROM jmaupetit/md2pdf:latest

RUN rm -rf ~/clermontech-moucss && git clone https://github.com/clermontech/Clermontech-MouCSS.git ~/clermontech-moucss

RUN cp ~/clermontech-moucss/fonts/* /usr/share/fonts/

RUN fc-cache -f -v


