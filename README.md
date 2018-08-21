# mytmux

    安装简单：sudo apt-get install tmux
    使用只需记住几个常用快捷键。
    tmux所有自带命令都默认需要先按Ctrb+b，然后再键入对应的命令。
    Ctrl+b原意为send-prefix，即发送前缀信号。以下简写C-b
    tmux   # 运行 tmux -2 以256终端运行，exit命令退出
    C-b d  # 返回主 shell ， tmux 依旧在后台运行，里面的命令也保持运行状态
    tmux ls # 显示已有tmux会话（C-b s）
    tmux attach-session -t 数字 # 选择tmux
    tmux new-session -s session-name
    tmux kill-session -t session-name
    man tmux//显示
    C-b ?  // 显示快捷键帮助，退出按q
    C-b  "  // 模向分隔窗口
    C-b % // 纵向分隔窗口
    C-b 方向键//在各窗口间切换（注意与下一个命令的区别）
    C-b C-方向键 //调整分隔窗口大小，不要松开Ctrl
    C-b c//create， 生成一个新的窗口
    C-b n//next，移动到下一个窗口
    C-b p//previous，移动到前一个窗口
    C-b l//last，移动到最后使用的窗口
    C-b C-o  //调换窗口位置，当前窗口和上一个窗口互换。
    C-b o // 跳到下一个分隔窗口
    C-b 0~9 //选择几号窗口
    C-b q // 显示分隔窗口的编号
    C-b w // 以菜单方式显示及选择窗口
    C-b s // 以菜单方式显示和选择会话
    C-b t //显示时钟
    C-b & // 确认后退出 tmux
    C-b ! // 把当前窗口变为新窗口
    C-b 空格键  //采用下一个内置布局
    C-b [ 复制(空格开始)
    C-b ] 粘贴（回车结束）

    C-b ,　给当前窗口改名

