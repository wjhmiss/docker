FROM pytorch/pytorch:2.3.1-cuda11.8-cudnn8-runtime
WORKDIR /app
# 将当前目录的内容复制到容器的/app中
ADD . /app
# 安装任何需要的包（例如pip install packageName）
# 如果你的Python程序依赖于其他的Python包，可以在这里安装它们
RUN pip install --no-cache-dir -r requirements.txt
# 设置环境变量（可选）
ENV NAME World
# 默认命令，当容器启动时运行（例如python app.py）
CMD ["python", "app.py"]