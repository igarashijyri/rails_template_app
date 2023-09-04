#!/bin/bash
set -e

rm -f /app/tmp/pids/server.pid

# exec "$@"でCMDで渡されたコマンドを実行しています。(→rails s)
# コンテナのプロセスを実行する。（Dockerfile 内の CMD に設定されているもの。）
exec "$@"