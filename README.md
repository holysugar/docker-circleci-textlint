# holysugar/textlint

## usage

docker exec run -v $(pwd):/textlint/ holysugar/textlint README.md

## textlintrc

- 環境変数 TEXTLINTRC があればそれを参照します。
- /textlint/.textlintrc があれば（つまり `-v $(pwd):/textlint/` のように起動している限り、
  カレントディレクトリに .textlinrc が存在すれば）、それを参照します。
- さもなくばこの docker image に含まれるこのリポジトリの .textlintrc を参照します。

