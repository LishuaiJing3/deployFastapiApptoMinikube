FROM python:3.8.5

WORKDIR /usr/src/app

#COPY src/util/viccv012_fastapi.py .
# copy the full proejct to test. Simplify this later
COPY . .
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python","-m","src.algo_fastapi"]