# TableViewExample
2016/8/29 AKIBA.swift×Swift愛好会 http://love-swift.connpass.com/event/37019/ での発表デモプロジェクト。

## 要点

- TableViewの興味の関心
    - データ
      - indexPathで特定
      - データの種類を**値つきEnum**で網羅＆型安全に取り扱う
    - Cellの実体の表示
      - reuseIdentifierで特定
      - `reuseIdentifier = Class名` というルールを導入し、**強制キャスト**で無理矢理型安全に取り扱う
        - 実際はreuseIdentifier:Classは多対1なので、OptionalでreuseIdentifierを指定できるようにもする

こんな思想で実装したUITableViewのサンプルです。
