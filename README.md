# yazaki.lab.uec.ac.jp
矢崎研究室の対外向けWebサイト

## 環境構築
1. Dockerをインストールする
2. `make dev`を実行して開発サーバーが起動することを確認

## Decap CMSの使い方

現在はローカル環境で編集をする際にのみ、DecapCMSを利用できるようにしています。そのため、機能としてはローカルで動くMarkdownエディタと同じです。

1. `make decap`でDecapのサーバーを起動
2. 別プロセスで`make dev`で開発用サーバーを起動
3. [http://localhost:1313/admin](http://localhost:1313/admin)からエディタを起動
4. 編集してPublishするとローカルの変更になっているので、通常通りCommitしてPushする
