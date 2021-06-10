#!/bin/bash
echo ---------------------------------------------------------
echo 战神一键搭建脚本
echo Base By 缔梦天成
echo 安装前请确认已安装docker环境
echo 脚本发布时战神版本为2021-05-17
echo "Docker Hub地址：https://hub.docker.com/r/dmtc/zhan-shen"
echo "作者已更新群晖套件版，如有需要请访问上方链接了解详情"
echo ---------------------简介分割线--------------------------
echo -e "容器简介：战神容器是一个集多种功能于一身的大型网页容器\n          容器拥有ddns+frpc+frps+酸奶+远程下载+博客……等功能"
echo ""

echo "端口详细信息：请查看Docker Hub地址的介绍，战神会不定期云端升级，增加功能和维护"
echo ---------------------安装分割线-------------------------
echo -n "请输入本地数据存储目录[必填]>>>"
read dir

echo -n "1：阿里云镜像仓库"
echo -n "2：Docker Hub镜像仓库"
read -r -p "请选择镜像下载仓库 [1/2] " input

case $input in
    [1])
		echo "你的选择:阿里云镜像仓库"
		hubk="registry.cn-hangzhou.aliyuncs.com/dmtc/zhan-shen"
		;;

    [2])
		echo "Docker Hub镜像仓库"
		hubk="dmtc/zhan-shen"
       		;;

    *)
	echo "您输入的字符串不是Y或N"
	exit 1
	;;
esac

echo    "请输入安装版本[必填]"
echo -n "如果不清楚，请填写2021-05-17>>>"
read version

echo -n "请输入容器名称[自定义-小写英文-不可空格]>>>"
read name

read -r -p "请确认是否开启自动启动? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
		echo "你的选择:Yes"
		restart="--restart=always"
		;;

    [nN][oO]|[nN])
		echo "你的选择:No"
		restart=""
       		;;

    *)
	echo "您输入的字符串不是Y或N"
	exit 1
	;;
esac


read -r -p "请确认是否开始安装? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
        echo "你的选择:Yes"
		echo "开始pull镜像"
		
		docker pull ${hubk}:${version}

		echo "开始安装"

		echo "命令内容："
		echo 'docker run -d --dns=223.5.5.5 --dns=114.114.114.114 -v "${dir}/战神容器/aria2":"/downloads/aria2" -v "${dir}/战神容器/qbittorrent":"/downloads/qbittorrent" -v "${dir}/战神容器/Cloudreve/uploads":"/uploads/" -v "${dir}/战神容器/Cloudreve/temp":"/temp/" -v "${dir}/战神容器/backup":"/Disk/MY-SQL/" -v "${dir}/战神容器/ghost":"/Disk/ghost/" --net=host ${restart} --name=${name} ${hubk}:${version} /bin/bash ./auto.sh'
		echo ""
		echo ""

		mkdir -p "${dir}/战神容器"
		mkdir -p "${dir}/战神容器/aria2"
		mkdir -p "${dir}/战神容器/qbittorrent"
		mkdir -p "${dir}/战神容器/Cloudreve"
		mkdir -p "${dir}/战神容器/Cloudreve/uploads"
		mkdir -p "${dir}/战神容器/Cloudreve/temp"
		mkdir -p "${dir}/战神容器/backup"
		mkdir -p "${dir}/战神容器/ghost"
		chmod -R 7777 "${dir}/战神容器"
		docker run -d --dns=223.5.5.5 --dns=114.114.114.114 -v "${dir}/战神容器/aria2":"/downloads/aria2" -v "${dir}/战神容器/qbittorrent":"/downloads/qbittorrent" -v "${dir}/战神容器/Cloudreve/uploads":"/uploads/" -v "${dir}/战神容器/Cloudreve/temp":"/temp/" -v "${dir}/战神容器/backup":"/Disk/MY-SQL/" -v "${dir}/战神容器/ghost":"/Disk/ghost/" --net=host ${restart} --name=${name} ${hubk}:${version} /bin/bash ./auto.sh
		
		
                ;;

    [nN][oO]|[nN])
                echo "你的选择:No"
		echo "退出安装！"
                exit
                ;;

    *)
        echo "您输入的字符串不是Y或N"
        exit 1
        ;;
esac