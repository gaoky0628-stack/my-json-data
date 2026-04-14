@echo off
echo 开始上传到 GitHub...

:: 1. 将所有文件添加到暂存区
git add .

:: 2. 自动生成包含当前时间的提交说明
set commit_msg=Update at %date% %time%
git commit -m "%commit_msg%"

:: 3. 确保分支是 main
git branch -M main

:: 4. 推送到远程仓库
git push -u origin main

echo.
echo ================================
echo 上传完成！按任意键退出...
echo ================================
pause