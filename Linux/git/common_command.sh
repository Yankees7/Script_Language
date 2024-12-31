# 重新提交上一次commit
# (如果有新的内容先：git add .)
git commit --amend


## 代码托管平台MR, 在本地预合并(也就是检出合并后的代码)
buildRef="refs/merge-requests/${merge_id}"
refspec="+refs/merge-requests/${merge_id}/head:refs/remote/origin/merge-requests/${merge_id}/head"
git clone https://gitee.com/yangjing/python.git
git fetch origin ${refspec}
git merge ${buildRef}
