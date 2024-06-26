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
