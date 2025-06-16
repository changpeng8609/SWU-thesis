# 西南大学学位论文的 Typst 模板
本模板基于Typst 版本：0.13.0。

目前包含硕士、博士两种模板，基本完全实现了西南大学关于学位论文的要求。

本模板使用的命令和函数相对浅显易懂，并配有充分的注释。有一定typst基础的同学可以进行修改以满足自己的特定需求。

如果有问题请发邮件到chang1986@swu.edu.cn进行反馈。

如果感觉不错，请好评！

# 软件安装
1. 下载 VS code并安装。下载地址：https://vscode.download.prss.microsoft.com/dbazure/download/stable/dfaf44141ea9deb3b4096f7cd6d24e00c147a4b1/VSCodeSetup-x64-1.101.0.exe 。默认安装位置 C:\Users\{Username}\AppData\Local\Programs\Microsoft VS Code。

2. 为VS code 安装Typst插件 Tinymist Typst.

3. 下载并安装Typst，地址：https://github.com/typst/typst/releases/tag/v0.13.1，版本选typst-x86_64-pc-windows-msvc.zip

4. 解压完成后，不需要安装，但需要配置环境变量：

1）在系统→高级系统设置→环境变量→Administrator的用户变量→Path，添加"D:\typst-x86_64-pc-windows-msvc"。此处应该根据实际路径修改。

2）打开终端或powershell，输入命令`typst --version`，如果输出`typst 0.13.1 `，则Typst设置正确。

3）打开终端或powershell，输入命令`code --version`，如果输出`1.100.3 **** x64`的类似信息，则code设置正确。

# 简易使用
1. 新建.typ文件。如果有模板则可直接用typst打开。右上角有export和preview选项。

2. 常规语法教程请参考https://typst-doc-cn.github.io/docs/tutorial/writing-in-typst/。
   注意：只需要掌握最基础的几点语法就可以使用typst进行写作了。

# 致谢
本模板在制作中学习和参考了[哈尔滨工业大学论文模板](https://github.com/hitszosa/universal-hit-thesis/)和[北京大学学位论文模板]（https://github.com/pku-typst/pkuthss-typst）的相关命令和内容，在此致谢。

# 捐赠
本模板的制作纯粹出于个人爱好。制作不易，如果你觉得此模板对你有很大帮助，请考虑捐赠任意金额以支持本模板的维护和其它模板的开发。

支付宝号：524545548@qq.com

微信号：changpeng8609
