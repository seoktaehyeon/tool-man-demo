# tool-man-demo
工具人演示代码

## Stage

#### Build
```bash
docker build -f Dockerfile -t tool-man:demo .
```

#### Integration Test 
```text
docker run -v $PWD/output:/workspace/output --rm tool-man:demo bash -c "robot -d output testcase"
```

## CI/CD

#### GitHub Workflow
```text
.github/workflows/devops.yml
```

#### Jenkins
```text
Jenkinsfile
```

#### GitLab CI
```text

```
