# 1. Choose the base image
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the current directory contents into the container at /app
COPY . /app

# 4. Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 5. Make port 80 available to the world outside this container
EXPOSE 80

# 6. Define environment variable
ENV NAME World

# 7. Run the Python app when the container launches
CMD ["python", "app.py"]

