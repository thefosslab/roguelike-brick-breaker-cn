#!/bin/zsh
cd "$(dirname "$0")" || exit 1
echo "正在启动《肉鸽打砖块》本地服务..."
echo "请在浏览器打开："
echo "http://127.0.0.1:8791/"
python3 -m http.server 8791 --bind 127.0.0.1
