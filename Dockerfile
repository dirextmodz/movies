FROM python:3.12-slim

# Install git (required for pip to install from GitHub)
RUN apt-get update && apt-get install -y git && apt-get clean

WORKDIR /app
COPY . /app/

# Install Python dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8080
CMD ["python", "bot.py"]
