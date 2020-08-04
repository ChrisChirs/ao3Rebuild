## This Project will help you to rebuild our sites
### 支持登录，不会记录除了ip地址，时间，url之外的任何信息
*reference from [Anyi Server](https://zh.wikimirror.org/wiki/help)*

**准备工作**：

---
* 一台**未受封锁**的电脑或者vps。(镜像使用[*Ubuntu18.04*]("https://releases.ubuntu.com/18.04.4/"))
*   --镜实际运行[**Los Angeles**]("https://en.wikipedia.org/wiki/Los_Angeles")的服务器。
* 一个**域名**，如果没有将不能或者较难配置https加密。
* 设置域名解析到服务器的ip，添加一条空白的A解析记录即可
## nginx installation:
**请确定您当前终端的命令行前缀是root,如果不是,请先输入`sudo su root`回车再输入密码，密码默认是不会显示的，不要大惊小怪。**

然后输入`wget https://raw.githubusercontent.com/ChrisChirs/ao3Rebuild/master/build.sh && sh build.sh`并回车。

### 如果没有错误，那么表示nginx已经安装完毕

然后，您可以下载我们的[ao.conf]("https://raw.githubusercontent.com/ChrisChirs/ao3Rebuild/master/ao.conf")或者签出整个项目`git clone https://github.com/ChrisChirs/ao3Rebuild.git`，对ao.conf的yourdomain和证书更换成您自己的域名和证书。

我们的脚本默认把 **ao.conf** 视为存在 **/home/mirror/** 下。

配置完成后，输入最后一行命令:

`/usr/bin/nginx -c /home/mirror/ao.conf`

如果ao.conf没有存放在 **/homr/mirror** 下，那么请把 **/homr/mirror/ao.conf** 换成您所存放的 **ao.conf** 的路径。

# 我们尊重每个人的创作自由并坚实地拥护每个人的创作自由。

#### This page will be updated continually.
