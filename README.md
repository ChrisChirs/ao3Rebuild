## This Project will help you to rebuild our sites

*reference from Anyi Server*

**准备工作**：

---
* 一台**未受封锁**的电脑或者vps。(本脚本默认使用[*Ubuntu18.04*]("https://releases.ubuntu.com/18.04.4/"))
*   --本脚本默认采用[**Netherlands**]("https://en.wikipedia.org/wiki/Netherlands")的服务器。
* 一个**域名**，如果没有将不能或者较难配置https加密。
* 一个会对错误提问的**大脑**。
* ## ⚠服务器所处地区不同会造成CDN的不同，需要稍微调整ao.conf

## nginx installation:
**请确定您当前终端的命令行前缀是root,如果不是,请先输入`sudo su root`回车再输入密码，密码默认是不会显示的，不要大惊小怪。**

然后输入`wget https://raw.githubusercontent.com/ChrisChirs/ao3Rebuild/master/build.sh && sh build.sh`并回车。

### 如果没有错误，那么表示nginx已经安装完毕

然后，您可以下载我们的[ao.conf]("https://raw.githubusercontent.com/ChrisChirs/ao3Rebuild/master/ao.conf")或者签出整个项目`git clone https://github.com/ChrisChirs/ao3Rebuild.git`，对ao.conf的yourdomain和证书更换成您自己的域名和证书。

我们的脚本默认把 **ao.conf** 视为存在 **/root** 下，这不影响什么。但如果您有其他页面，请添加那些资源非root账户的 **read write** 权限，否则将无法读取。

配置完成后，输入最后一行命令:

`/usr/bin/nginx -c /root/ao.conf`

如果ao.conf没有存放在 **/root** 下，那么请把 **/root/ao.conf** 换成您所存放的位置路径。

# 我们尊重每个人的创作自由并坚实地拥护每个人的创作自由。

#### This page will be updated continually.
