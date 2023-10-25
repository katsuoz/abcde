# ベースイメージ
FROM python:3 

# メタ情報の追加
LABEL version="1.0" 
LABEL description="Python開発環境"  

# 環境変数の設定
ENV VAR Hello-World
RUN echo ${VAR}  

# 作業ディレクトリの指定
WORKDIR /usr/src/app  

# アプリのインストール
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt

# 起動時の処理実行
CMD ["echo","Hello-World"]
