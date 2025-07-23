FROM python:3.12-slim

# Install git (needed to clone from GitHub)
RUN apt-get update && apt-get install -y git && apt-get clean

# Set working directory
WORKDIR /app

# Copy all project files into the container
COPY . /app/

# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Expose the desired port
EXPOSE 8080

# Run the app
CMD ["python", "bot.py"]
