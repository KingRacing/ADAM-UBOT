FROM xluxz/geezproject:buster

RUN git clone -b ADAM-UBOT https://github.com/aruladam/ADAM-UBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

RUN pip3 install -r https://raw.githubusercontent.com/Skyzu/skyzu-userbot/skyzu-userbot/requirements.txt

EXPOSE 80 443

CMD ["python3", "-m", "userbot"]
