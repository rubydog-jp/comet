1. コマンドを受け取る

bin/comet_cli.dart

2. Root ルーターがサブコマンドを解析する

lib/router/root.dart

3. サブコマンドのルーターを呼び出す

lib/router/COMMAND.dart

4. サブコマンドのルーターが引数を解析する
5. サブコマンドのルーターがコマンド関数を呼び出す

lib/commands/COMMAND.dart

6. コマンド関数は処理中の表示をしながら順番に関数たちを呼び出す
