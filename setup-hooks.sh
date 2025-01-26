#!/bin/bash

# フックをローカルの .git/hooks にコピー
cp .hooks/post-commit .git/hooks/post-commit

# 実行権限を付与
chmod +x .git/hooks/post-commit

echo "Git hooks have been set up."
