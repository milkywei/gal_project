# 平成ギャル図鑑
「Webサービスを通して素晴らしき日本の平成ギャル文化を後世に遺す」という壮大なビジョンのもと始動した， 歴史的文化的に大変意義のある取り組み

https://drive.google.com/open?id=1GafgpJEWfsfRctqePAbjH4gOs-KluJ_D

### 初期モックアップ
![iOSgayzo](https://user-images.githubusercontent.com/30789283/56588966-51913180-661f-11e9-97c4-a1d2af020a5d.jpg)

## 環境
| | |
| --- | --- |
| Ruby | 2.4.2 |
| Rails | ~> 5.1.4 |
| PostgreSQL | ? |

### Ruby environmentがインストールされていない場合
事前に下記を実行。
```sh
$brew install ruby-build
$brew install rbenv
$brew install readline ##pry用
$RUBY_CONFIGURE_OPTS=--with-readline-dir=`brew --prefix readline` rbenv install -v 2.4.2
```
.bashrc等ターミナル設定ファイルに下記を追加する。
```sh
export PATH=$HOME/.rbenv/bin:$PATH
if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
fi
```
下記で設定ファイルを反映させる。
```sh
$source .bashrc
```
### PostgreSQLがインストールされていない場合
```sh
$ brew update 
$ brew install postgresql

```
### 上記がインストールされたら
下記から実行。
```sh
$git clone https://github.com/milkywei/gal_project.git
$cd gal_project
$gem install bundler
$bundle install --path vendor/bundle
