# twin-docs
バイリンガルのドキュメントをAIを使って双方向に自動翻訳をする機能を備えたドキュメント管理リポジトリの雛形です。

## 機能
- とりあえずこのリポジトリの[コミットログ](https://github.com/yh-iro/twin-docs/commits/main/)を見ると一目でわかると思います。
- \*_ja.mdという名称のファイルを新規作成、または編集してコミットすると\*_en.mdという名称のファイルに変更が翻訳されて反映されて自動的にコミットされます。
- 同様に\*_en.mdという名称のファイルを新規作成、または編集すると\*_ja.mdという名称のファイルに変更が翻訳されて反映されて自動的にコミットされます。
- コミットメッセージが"!"から始まるときは自動翻訳をスキップします。
- 翻訳した文書のレビュー・修正はGitHub上でのpull requestで行うことを想定しています。

## はじめてみる

```
git clone https://github.com/yh-iro/twin-docs.git
cd twin-docs
./setup-hooks.sh
# Set your OpenAI API Key that can be acquired at https://platform.openai.com/
echo "TWIN_DOCS_OPENAI_API_KEY=YOUR_OPENAI_API_KEY" > .env

# Edit one of *_ja/en.md files in the repo or create new file with name *_ja/en.md.
git add *_ja/en.md
git commit -m "some comment"
# Auto translation run and generate a commit of the translation.
git diff HEAD^^ HEAD
# You can see your update and the auto translation result.
```

## 残件
- GitHub Actionで実装した方がよいかもしれない。
- 今の実装では文章を全文AIに渡しているがこれはTOKENの無駄遣いで節約できそう。
- mdの中にハイバーリンクで挿入されている画像の扱いなどは特に決めていない。
- OPENAI_API_KEYの保存方法は要検討。
