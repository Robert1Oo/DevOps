from flask import Flask, render_template, request
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def home():
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    return render_template('index.html', current_time=current_time)

@app.route('/calculate_age', methods=['POST'])
def calculate_age():
    birthdate_str = request.form['birthdate']
    birthdate = datetime.strptime(birthdate_str, '%Y-%m-%d')
    age = (datetime.now() - birthdate).days // 365
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    return render_template('index.html', current_time=current_time, age=age, birthdate=birthdate_str)

if __name__ == '__main__':
    app.run(debug=True)
