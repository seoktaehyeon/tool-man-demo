FROM bxwill/robotframework:py-chrome-allure
LABEL maintainer='v.stone@163.com'
WORKDIR /workspace
COPY config config
COPY testcase testcase
COPY sraf-cmd sraf-cmd
ENV PYTHONPATH=/workspace
