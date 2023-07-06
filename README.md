# DockerComposeコマンド簡略化のMakefile

## 使用方法
1. `compose.yml`ファイルと同階層に`Makefile`(もしくは`makefile`)ファイルを作成
2. このリポジトリの`Makefile`のコードを1.で作成したファイルに記述
3. dockerコマンドを実行していた階層にて、`Makefile`で記述したコマンド（ターゲット）を実行

## ターゲット解説（一部）
> ```Makefile
>attach-%:  
>    docker compose run --rm ${@:attach-%=%} sh
>```
`$ make attach-app`を実行した場合、`$ docker compose run --rm app sh`が実行される
>```Makefile
>run-%:
>   docker compose run --rm $(word 1, $(subst -, ,$*)) $(word 2, $(subst -, ,$*))
>```
`$ make run-app-yarn install`を実行した場合、`$ docker compose run --rm app yarn intall`が実行される