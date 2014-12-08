FROM jmaupetit/md2pdf:latest

RUN rm -rf ~/clermontech-moucss && git clone https://github.com/clermontech/Clermontech-Documents-Styles.git ~/clermontech-moucss

RUN cp ~/clermontech-moucss/fonts/* /usr/share/fonts/

RUN fc-cache -f -v

ENTRYPOINT ["md2pdf", "--css=/root/clermontech-moucss/Clermontech.css"]
