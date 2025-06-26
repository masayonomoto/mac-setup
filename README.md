# mac-setup
- このコマンドをターミナルにコピペして実行する

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/masayonomoto/mac-setup/master/firststep.sh)"
```

## poetry について
- 202506時点追記：poetryは2系が入ってしまうので、この中のbrewでの自動インストールはやめたほうがいいかも。後でremoveして1.8.2にダウングレードしてインストールした。
    ```sh
    brew uninstall poetry
    curl -sSL https://install.python-poetry.org | POETRY_VERSION=1.8.2 python3 -
    poetry --version
    ```
- 先に安定版がないようなら、/Users/masayo/mac-setup/roles/homebrew/vars/main.yml 内のpoertyはコメントアウトし、後で上記のバージョン指定でいれるのがいいかも。

# Google IMEの設定は手動
- Google IMEはシステム設定からセットアップする必要がある
- システム設定＞キーボード＞編集＞＋から日本語のひらがな（Google）と英数（Google）を追加

# for additional setup
追加アプリを入れる場合
1. varsに追加
2. 下記を実行
```
ansible-playbook ./mac.yml -i ./inventory
```

# 過去メモ
## git-promptの設定（タブ補完、ブランチ表示）追加
以下の各コマンドを実行
```
mkdir ~/.zsh
cd ~/.zsh

curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
```

## 20241117MacStudioに使用した際のメモ
- caskのslackとrancherでエラーが出てmacosのセットアップは動作せず。
- 一時的にmac.ymlのrollsをmacosだけにすることで動作
