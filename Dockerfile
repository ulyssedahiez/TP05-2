FROM python

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

ENV FLASK_APP=main.py

EXPOSE 5001

ENTRYPOINT [ "flask" ]
CMD [ "run", "--host", "0.0.0.0", "--port", "5001" ]