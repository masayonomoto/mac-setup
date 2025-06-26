# mac-setup

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/masayonomoto/mac-setup/2024_humanome_mac_setup/firststep.sh)"
```

# for additional setup
追加アプリを入れる場合
1. varsに追加
2. 下記を実行
```
ansible-playbook ./mac.yml -i ./inventory
```

# git-promptの設定（タブ補完、ブランチ表示）
以下の各コマンドを実行
```
mkdir ~/.zsh
cd ~/.zsh

curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
```

#20241117MacStudioに使用した際のメモ
caskのslackとrancherでエラーが出てmacosのセットアップは動作せず。
一時的にmac.ymlのrollsをmacosだけにすることで動作
