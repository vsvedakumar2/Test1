FROM python:3.10-slim

EXPOSE 8080

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

#ENTRYPOINT ["python"]
CMD ["python", "app.py"]
