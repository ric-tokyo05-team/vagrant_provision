# ubuntuイメージから作る
FROM python:latest

# /codeディレクトリ作成
RUN mkdir /code

# cd /code
WORKDIR /code

# requirements.txtをコピー
ADD requirements.txt /code/

# test.pyをコピー
ADD test.py /code/

# pip install
RUN pip install -r requirements.txt

ADD . /code/

