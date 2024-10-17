#Dockerfile
FROM python:3.9
WORKDIR /app
COPY ./requirements.txt ./requirements.txt
RUN pip install --no-cache-dir --upgrade -r ./requirements.txt
COPY ./app.py .
COPY ./heart-disease-v1.joblib ./heart-disease-v1.joblib
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]