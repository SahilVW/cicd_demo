from python:3.9-slim

WORKDIR /app

COPY requirements.txt

RUN pip install -r requirements.txt

COPY..

# Expose the port the API will run on
EXPOSE 5000

# Run the command to start the API when the container starts
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]
