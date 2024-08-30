# Hello

These instructions guide you on how to work with the app as a Docker container, whether you want to develop the current app and then containerize it or simply explore its available features.

## Develop Then Containerize

### 1. Build and Run the Container

After making and saving your edits, follow these steps:

1. Open your terminal.
2. Navigate to the project directory:

   ```bash
   cd age_calculator
   ```

3. Build the Docker image:

   ```bash
   docker build -t age_calculator .
   ```

4. Run the Docker container:

   ```bash
   docker run --name app1 -p 5000:5000 age_calculator
   ```

5. Open your web browser and navigate to:

   ```
   http://127.0.0.1:5000
   ```

6. Provide your birth date and press enter.

### 2. Stop and Remove the Container

To stop the app and clean up:

1. Go back to the terminal and press:

   ```
   Ctrl + C
   ```

2. Remove the container:

   ```bash
   docker container rm app1
   ```

## Use the Ready-to-Use Container

### 1. Download the Image

If you want to skip development and use the pre-built container, download the image with:

```bash
docker pull robert1oo/age_calculator:latest
```

### 2. Run the Container

Start the container with:

```bash
docker run --name app1 -p 5000:5000 robert1oo/age_calculator
```

Open your web browser and navigate to:

```
http://127.0.0.1:5000
```

Provide your birth date and press enter.

### 3. Stop and Remove the Container

To stop the app and clean up:

1. Go back to the terminal and press:

   ```
   Ctrl + C
   ```

2. Remove the container:

   ```bash
   docker container rm app1
   ```
