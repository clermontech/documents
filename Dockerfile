FROM jmaupetit/md2pdf:latest

RUN apt-get -yy update && apt-get -yy install wget unzip

RUN cd /root && \
        wget https://github.com/clermontech/Clermontech-Documents-Styles/archive/master.zip && \
        unzip master.zip && \
        mv Clermontech-Documents-Styles-master clermontech-moucss && \
        rm -f master.zip && \
        cp clermontech-moucss/fonts/* /usr/share/fonts/

RUN fc-cache -f -v

WORKDIR /wrk

ENTRYPOINT ["/app/.venv/bin/md2pdf", "--css=/root/clermontech-moucss/Clermontech.css"]
