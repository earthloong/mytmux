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

什么是window?

就是用 C-b c 创建出来的窗口，每个window跟tmux所在的终端一样大，window里面可以容纳多个pane。

所有窗口的名称显示在底部状态栏上，如下图所示。 有了上面的配置，只要点击窗口名就可以切换到指定窗口了 （快捷键是 C-b n, C-b p, C-b 1 .. C-b 9）


(图盗自这里: Increased Developer Productivity with Tmux, Part 2: ~/.tmux.conf)
什么是pane?

就是窗口里面的分屏，可以用 C-b o 来切换到下一个pane，或者用 C-b Up 切换到当前pane上方的pane, 用C-b Down切换到当前pane下方的pane.

还有一种切换方法是 C-b q，tmux会显示每个pane的序号，按这个序号就可以跳过去了（按慢了可不行，得在数字消失前按）。

![avatar](https://images0.cnblogs.com/blog2015/163248/201506/122323275041915.png)
(本图片盗自: http://www.slideshare.net/lgfang/tmux/14 )

开启了 mouse-select-pane 选项之后， 就可以用鼠标点击面板切换了
用鼠标改变pane的大小

其实前面切换window或者pane，用鼠标并没有太大优势，也就只能略微减轻一点记忆负担。 但用鼠标拖动改变pane的大小这条是比快捷键有优势的，因为用快捷键很难一次调节到位 ，比如是增加6行还是9行？ 缩小20列还是40列？而且 还可以斜向拖住交叉点来同时改变多个窗口的大小
附送一条贴士: 最大化/还原pane

    如果你用的是tmux >= 1.8，那么可以用 C-b z 来最大化一个pane，想恢复的时候再次按 C-b z 就是了
    如果你用的是tmux < 1.8，那么有点复杂，自己看这里: “Maximizing” a pane in tmux

参考

推荐下面两个slides，讲得都很通俗易懂。不过slideshare被蔷了，各位自己想办法吧

    http://www.slideshare.net/lgfang/tmux (搜了一下，在蔷内找到一个老点的版本: tmux - A Great Terminal Multiplexer)
    http://www.slideshare.net/chenkaie/tmux-rocks

