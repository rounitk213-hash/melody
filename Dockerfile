# ✅ Use official lightweight Python image
FROM python:3.10-slim

# ✅ Install required system packages
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    libsm6 \
    libxext6 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# ✅ Set working directory
WORKDIR /app

# ✅ Copy all project files
COPY . .

# ✅ Upgrade pip and install Python dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# ✅ Command to start your bot
# If your entry file is main.py → use this:
CMD ["python3", "main.py"]

# 👇 OR (if you have a package folder named ANNIEMUSIC with __main__.py)
# CMD ["python3", "-m", "ANNIEMUSIC"]
