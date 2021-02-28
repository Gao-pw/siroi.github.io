#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# deploy to github
# echo 'b.xugaoyi.com' > CNAME

git init
git add -A
git commit -m "add article"
git push -f git@github.com:Gao-pw/siroi.github.io.git master:gh-pages

# deploy to coding
# echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名
# echo 'google.com, pub-7828333725993554, DIRECT, f08c47fec0942fa0' > ads.txt # 谷歌广告相关文件


cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist
