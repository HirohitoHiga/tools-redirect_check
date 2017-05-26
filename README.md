# redirect_check
リダイレクト確認のシェルスクリプトです。
旧サイトURLから現URLを取得し、txtファイルで保存します。

### URLを取得

- コマンドで下記を実行

[./redirect.sh oldsitesurl_file.txt)]
※「oldsiteurl_file.txt」は任意となります。

- 出力ファイルの確認

「result.txt」は「oldsiteurl_file.txt」と同一ディレクトリに出力されます。


### 日本語のデコード
リダイレクト先のURLに日本語が含まれる場合、エンコードされ出力されます。
必要であればresult.txtをデコードします。

- コマンドで下記を実行  

[./decode.sh result.txt)]

- 出力ファイルの確認

「result_de.txt」は「result.txt」と同一ディレクトリに出力されます。

