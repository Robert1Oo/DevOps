import pytest
from main import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_home(client):
    response = client.get('/')
    assert response.status_code == 200
    assert b'The current time is:' in response.data

def test_calculate_age(client):
    response = client.post('/calculate_age', data={'birthdate': '2000-01-01'})
    assert response.status_code == 200
    assert b'Your age is: 24' in response.data
    assert b'Your birthdate is: 2000-01-01' in response.data


