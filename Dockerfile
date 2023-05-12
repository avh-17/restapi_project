FROM python:3.10
WORKDIR /app
COPY pip install --no-cache-dir --upgrade -r requirements.txt 
RUN pip install flask
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]
