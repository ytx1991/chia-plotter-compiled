###本项目基于 https://github.com/madMAx43v3r/chia-plotter 编译
目前仅适用于Linux系统

### 安装
使用git clone https://github.com/ytx1991/chia-plotter-compiled.git 或下载解压包解压即可
运行：
chmod +x plotter.sh
chmod +x chia_plot

### 使用说明
本脚本可实现单P自动循环，使用前需要将HDD编号，并有统一前缀，具体说明见plotter.sh。硬盘空间不足的磁盘会自动跳过
1. 使用文本编辑工具编辑 plotter.sh，按照其中的说明修改所有参数
2. 保存后运行： nohup ./plotter.sh > plotter.sh &
3. 使用 tail -f c- 10000 plotter.sh 可查看日志
