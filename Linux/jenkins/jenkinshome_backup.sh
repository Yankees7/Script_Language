#!/bin/bash
# Author "YANGJING"
: << COMMENT
功能：对${JENKINS_HOME}进行备份
执行：bash jenkinshome_backup.sh ${JENKINS_HOME}
COMMENT
set -e

JH=$1
jenkins_backup_tmp=/tmp/jenkins_backup_tmp
jobs=$(ls ${JH}/jobs)
time_tag=$(date '+%Y%m%d_%H-%M-%S')
JH_tag=${JH//\//_/} # 变量字符串的直接替换${var/old/new/},${var//old/nwe/}

# 1.Clear jenkins_backup_tmp
rm -rf ${jenkins_backup_tmp}
mkdir -p ${jenkins_backup_tmp}

# 2.Backup jobs :${JH}/jobs/anyjob/config.xml
for i in ${jobs}
do
    sourcefile=$(echo $i | sed "s#^#${JH}/jobs/#g" | sed 's#$#/config.xml#g')
    targetpath=${jenkins_backup_tmp}/jobs/${i}
    echo ${targetpath}
    if [ ! -d "${targetpath}" ];then mkdir -p "${targetpath}";fi
    cp -rf ${sourcefile} ${targetpath}
done

# 3.Backup ./*.xml(config.xml credentials.xml ...) nodes plugins users
cd ${JH}
cp -rf nodes plugins users ${jenkins_backup_tmp}
cp -rf -- *.xml ${jenkins_backup_tmp} # -- 意味者命令选项的结束（同./*）；当文件名是例如-f破折号开头这样的名字时，就不会把-f视为命令选项；如果视为命令选项就会统配不全

# 4.Packge
cd ${JH}/../
tar -cvf "jenkins${JH_tag}_${time_tag}.tar.gz" ${jenkins_backup_tmp}


