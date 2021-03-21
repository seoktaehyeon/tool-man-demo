FROM bxwill/robotframework:py-chrome-allure
LABEL maintainer='v.stone@163.com'
WORKDIR /workspace
COPY testcase testcase
ENV PYTHONPATH=/workspace
