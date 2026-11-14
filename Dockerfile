FROM python:3.12-slim

RUN useradd -m naoroot
USER naoroot

WORKDIR /home/naoroot

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

ENV HISTORICO=/dados/historico.log

EXPOSE 5000

ENTRYPOINT [ "python", "app.py" ]