# twin-docs
This is a template for a document management repository equipped with a feature that uses AI to automatically translate bilingual documents in both directions.

## Features
- You can easily understand by looking at the [commit log](https://github.com/yh-iro/twin-docs/commits/main/) of this repository.
- When you create or edit a file named \*_ja.md and commit it, the changes are translated and reflected in a file named \*_en.md, and automatically committed.
- Similarly, when you create or edit a file named \*_en.md, the changes are translated and reflected in a file named \*_ja.md, and automatically committed.
- If the commit message starts with "!", the automatic translation is skipped.
- It is assumed that the review and correction of translated documents will be done via pull requests on GitHub.

## Getting Started

```
git clone https://github.com/yh-iro/twin-docs.git
cd twin-docs
./setup-hooks.sh
# Set your OpenAI API Key that can be acquired at https://platform.openai.com/
echo "TWIN_DOCS_OPENAI_API_KEY=YOUR_OPENAI_API_KEY" > .env

# Edit one of *_ja/en.md files in the repo or create a new file with the name *_ja/en.md.
git add *_ja/en.md
git commit -m "some comment"
# Auto translation run and generate a commit of the translation.
git diff HEAD^^ HEAD
# You can see your update and the auto translation result.
```

## Remaining Tasks
- It might be better to implement this with GitHub Action.
- The current implementation sends the entire text to the AI, which might be a waste of tokens and could be optimized.
- There is no specific decision on how to handle images inserted as hyperlinks in the markdown.
- The method of storing the OPENAI_API_KEY needs to be considered.
