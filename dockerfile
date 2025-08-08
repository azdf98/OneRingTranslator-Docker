FROM python:3.13

COPY . /ORT
WORKDIR /ORT
RUN pip install -r ./requirements.txt

ENV \
    LISSEN_IP="0.0.0.0" \
    PORT=4990

EXPOSE 4990

VOLUME /ORT/Option

ENTRYPOINT python ./run_webapi.py

