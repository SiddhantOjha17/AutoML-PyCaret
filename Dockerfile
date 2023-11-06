FROM python:3.9

ENV PYTHONNUNBUFFER=1

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501



CMD  ["streamlit" ,"run" ,"app.py"]