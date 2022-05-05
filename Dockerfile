FROM python:stretch


ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH
COPY ./ $INSTALL_PATH
WORKDIR $INSTALL_PATH 

RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]