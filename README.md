# zhan-shen
战神安装教程  https://dmserver.github.io/

v2ray ssr ss ddns frpc frps aria2 qbittorrent订阅等超多功能

功能：公网动态ddns解析，frpc穿透，frps开服，虚拟组网（穿透，公网4转6），公网4 6转 ，aria2+qbittorrent远程下载，酸奶库，酸奶，博客，web监控，自动更新tracker服务器，等

超级组合功能：（战神使用host网络=虚拟网络交换机-可跨不同ip进行上网代理-在群晖上可代替软路由进行跨网卡上网）（酸奶+aria2=可自动加速下载国外资源）（虚拟组网+公网4 6转=虚拟组网穿透）（虚拟组网+公网4 6转+qbittorrent=大内网用户可玩pt站进行正常上传-需要在pt站进行ip备案）其他组合功能等待发现，因为某些组合也是在折腾时发现的。

 

公网动态ddns解析：这个基本不用介绍了，就是帮你域名解析公网ip(支持 阿里 腾讯 国外cf 解析)，域名数量无限制，解析记录无限制，三个运营商可同时使用，内含ip变动通知（server酱+邮箱）

frpc穿透：帮你大内网穿透到外网，在外网可以访问家庭服务

frps开服：frpc的服务端，你可以开服给别人用或者自己用，或者你的局域网特别复杂1级路由想访问4级路由并且还不想改变网络就可以开个局域网的frp

虚拟组网（穿透，公网4转6）：这个功能是把不同地方的机器放到一个局域网里，利用公网4转6可以实现p2p穿透 避免常规客户端限制 只要打洞成功 任何设备访问都是p2p模式

 

常规穿透的2种模式：1，服务端客户端都要安装软件实现p2p穿透但未必能打洞成功 不成功需要依靠服务器中转

2，服务端安装客户端，完全依靠服务器中转

若依靠服务器中转，将占用服务器双倍上传，服务器速度为正常的一半，例如10M宽带的服务器最快只有5M

战神虚拟组网穿透：将2种模式融合，避免外网需要安装客户端的限制，任何设备不需要安装客户端都可p2p或中转访问家里服务，在打洞成功时速度是两地宽带上传的最低极限，打洞失败也可保证1MB/S的速度。若不能打洞还想免费更快可以使用公网4转6的负载均衡多次组虚拟局域网 进行负载均衡融合 速度同样可以达到宽带极限。

 

公网4 6转 ：公网v4转公网v6，公网v6转公网v4，虚拟局域网v4 v6转公网v4 v6可实现穿透

aria2：远程下载利器，在战神内配合酸奶可下载国外网络教程等资源

qbittorrent远程下载：bt pt下载利器 在使用过程中 发现比transmission要好用很多，响应速度快，更容易获取上传和下载速度，配合虚拟组网+公网4 6转可实现大内网用户玩pt的要求，正常进行上传

酸奶库：每日自动产奶，自动检测，完全无人操作，

酸奶：自动吸奶，自动换奶，完全无人操作，

博客：可以搭建你自己的博客小站

web监控：可用于监控网络服务器是否在线，监听家庭网络服务

自动更新tracker服务器：定时自动获取tracker服务器，自动更新aria2的tracker，在资源分布很散的时候可以加速下载

组合功能：虚拟网络交换机，战神在搭建的时候使用host网络，可实现多网卡虚拟桥接，

例： 群晖有3张网卡

网卡1接入正常上网的局域网或其他网络

在群晖控制面板为网卡2 3开启dhcp-server服务并为2 3网卡设置固定ip

然后将其他机器接入2或3的网卡将自动获取到群晖分配的ip，接着为电脑设置代理就可以正常上网了，即使是不能用虚拟机的机器只要有docker搭建战神都可以跨网卡上网，

如果你家没有网络，但是你群晖挂无线网卡蹭到网络了，同样可以通过群晖网口把网络供给电脑使用
