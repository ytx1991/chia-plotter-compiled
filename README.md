### 本项目基于 https://github.com/madMAx43v3r/chia-plotter 编译

### Linux系统
### 安装
使用git clone https://github.com/ytx1991/chia-plotter-compiled.git 或下载解压包解压即可
运行：
chmod +x plotter.sh
chmod +x chia_plot

### 使用说明
本脚本可实现单P自动循环，使用前需要将HDD编号，并有统一前缀，具体说明见plotter.sh。硬盘空间不足的磁盘会自动跳过
1. 使用文本编辑工具编辑 plotter.sh，按照其中的说明修改所有参数
2. 保存后运行： nohup ./plotter.sh > plotter.log &
3. 使用 tail -f -c 10000 plotter.log 可查看日志

### Windows系统
### 安装
使用git clone https://github.com/ytx1991/chia-plotter-compiled.git 或下载解压包解压即可
安装Windows C++ 2015 运行环境
https://www.microsoft.com/en-us/download/details.aspx?id=48145

### 使用说明
本脚本可实现单P自动循环，需要手动添加所有盘符，具体说明见plotter.ps1。硬盘空间不足的磁盘会自动跳过
1. 使用文本编辑工具编辑 plotter.ps1，按照其中的说明修改所有参数
2. 保存后运行Powershell
3. cd到脚本目录执行脚本
