# SQL アンチパターンの練習用レポジトリ

[SQL アンチパターン](https://www.amazon.co.jp/SQL%E3%82%A2%E3%83%B3%E3%83%81%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3-Bill-Karwin/dp/4873115892) を学習する上で利用するためのレポジトリです。

## Prerequisites

- Docker

※Docker にて、MySQL の公式イメージを用いて環境を構築します。

## Installation

```bash
$ git clone https://github.com/kooooichi24/sql-anti-pattern-exercise.git
$ cd sql-anti-pattern-exercise
```

## Usage

```bash
$ docker compose up -d
$ mysql --host 127.0.0.1 --port 3306 -u root -p rootpassword
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
