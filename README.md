# deepl-cli

[![PyPI version](https://badge.fury.io/py/deepl-cli.svg)](https://badge.fury.io/py/deepl-cli) [![Maintainability](https://api.codeclimate.com/v1/badges/a56630914df8538ca93b/maintainability)](https://codeclimate.com/github/eggplants/deepl-cli/maintainability) [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

[![Downloads](https://pepy.tech/badge/deepl-cli)](https://pepy.tech/project/deepl-cli) [![Downloads](https://pepy.tech/badge/deepl-cli/month)](https://pepy.tech/project/deepl-cli/month) [![Downloads](https://pepy.tech/badge/deepl-cli/week)](https://pepy.tech/project/deepl-cli/week)

- [DeepL Translator](https://www.deepl.com/translator) CLI using pyppeteer
- Translate standard input into a specified language

## Install

```bash
# python 3.x
pip install deepl-cli
```

![demo](https://i.imgur.com/mGbwqO7.png)

## Requirements

- [Python 3.x](https://www.python.org/ftp/python/)
- [pyppeteer](https://github.com/pyppeteer/pyppeteer)

## Usage

```bash
$ deepl
SYNTAX:
    $ ... | deepl <from:lang>:<to:lang>
    $ deepl <from:lang>:<to:lang> <<'EOS'
      ...
      EOS
    $ deepl <from:lang>:<to:lang> <<<"..."
    $ deepl <from:lang>:<to:lang> < <filepath>
USAGE:
    $ echo Hello | deepl en:ja
    $ deepl :ru <<'EOS' # :ru is equivalent of auto:ru
      good morning!
      good night.
      EOS
    $ deepl fr:zh <<<"Mademoiselle"
    $ deepl de:pl < README_de.md
LANGUAGE CODES:
    <from:lang>: {(empty)=auto, ja, en, de, fr, es, pt, it, nl, pl, ru, zh}
    <to:lang>:   {ja, en, de, fr, es, pt, it, nl, pl, ru, zh}
```

## Lisence

MIT

## Author

Haruna(eggplants)
