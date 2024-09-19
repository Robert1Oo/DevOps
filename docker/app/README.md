## Run the app on your machine without container

## Create a Python Virtual Environment

```bash
cd DevOps/docker/app

python3 -m venv venv

source venv/bin/activate
```

## Install the App requirements

```bash
pip install -r requirements.txt
```

## Test & run  the App

```bash
pytest
python3 main.py
```

## Try It Out

Open your web browser and navigate to:

```
http://127.0.0.1:5000
```

Provide your birth date and press enter.

## Close the App

To stop the app and exit the virtual environment:

1. Go back to the terminal and press:

   ```
   Ctrl + C
   ```
2. Deactivate the virtual environment:

   ```bash
   deactivate
   ```
