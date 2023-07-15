# DockerCompose コマンド簡略化の Makefile

## 使用方法

1. `compose.yml`ファイルと同階層に`Makefile`(もしくは`makefile`)ファイルを作成
2. このリポジトリの`Makefile`のコードを 1.で作成したファイルに記述
3. docker コマンドを実行していた階層にて、`Makefile`で記述したコマンド（ターゲット）を実行

## ターゲット解説（一部）

> ```Makefile
> attach-%:
>    docker compose run --rm ${@:attach-%=%} sh
> ```
>
> `$make attach-app`を実行した場合、`$ docker compose run --rm app sh`が実行される
