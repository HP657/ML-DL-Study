FROM python:3.11.13-slim

# 작업 디렉토리
WORKDIR /app

# venv 생성
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# pip 최신화 + jupyter 설치
RUN pip install --upgrade pip \
    && pip install jupyter

# 기본 실행: 주피터 서버
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
