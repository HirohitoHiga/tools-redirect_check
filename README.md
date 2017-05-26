# redirect_check  
リダイレクト確認のシェルスクリプトです。  
旧サイトURLから現URLを取得し、txtファイルで保存します。  

##旧サイトURLの設定方法  
基本的にgooglespreadシートなどでの作業を想定しています。  

1.oldsiteurl_file.txt（任意）を作成  
2.確認したいURLごとに改行で区切る（googlespreadであれば範囲を選択しコピペ、貼り付けで大丈夫です。）  
3.保存  

例)  
http://site.com/aaaa  
http://site.com/bbbb  
http://site.com/cccc  
...  
http://site.com/zzzz  


### URLを取得  

- コマンドで下記を実行  

[./redirect.sh oldsitesurl_file.txt)]  
※「oldsiteurl_file.txt」のファイル名、パスは任意となります。  

- 出力ファイルの確認  

「result.txt」は「oldsiteurl_file.txt」と同一ディレクトリに出力されます。  


### 日本語のデコード  
リダイレクト先のURLに日本語が含まれる場合、エンコードされ出力されます。  
必要であればresult.txtをデコードします。  

- コマンドで下記を実行  

[./decode.sh result.txt)]  

- 出力ファイルの確認  

「result_de.txt」は「result.txt」と同一ディレクトリに出力されます。  