FROM chetan1111/botasaurus:latest

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN python -m pip install -r requirements.txt

RUN mkdir app
WORKDIR /app
COPY . /app

RUN python run.py install

EXPOSE 3000
EXPOSE 8000

CMD ["python", "run.py"]