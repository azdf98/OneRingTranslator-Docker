FROM python:3.13

COPY . /ort
WORKDIR /ort
RUN pip install -r ./requirements.txt

ENV \
    ORT_LISTEN_IP="0.0.0.0" \
    ORT_PORT=4990

EXPOSE 4990

VOLUME /ort/options

CMD python ./run_webapi.py

