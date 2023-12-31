# Vertigo Remastered 日本語化パッチ

これは[Vertigo Remastered](https://store.steampowered.com/app/1318090/Vertigo_Remastered/)を日本語化するパッチです。

制作元であるZulubo Productionsより翻訳の制作、配布の許諾を受けて公開しているものです。

[続編のVertigo 2の日本語化パッチはこちら。](https://github.com/izayoi256/vertigo-2-ja)

# 動作確認済み環境

- Windows 10

# 導入方法

※ 2023/10/25に導入方法を変更しました。それ以前のパッチを導入済みの場合は、ゲームをクリーンインストールしてから下記の手順に従ってください。

(クリーンインストールしてもセーブデータは引き継がれます)

## XUnity.AutoTranslatorの導入

※ 主に自動機械翻訳に使われるツールですが、本パッチではフォント置き換え等のために利用します。ゲーム内のテキストは機械翻訳ではないためご安心ください。

ここではReiPatcher版を導入する方法を記します。

1. [XUnity.AutoTranslator](https://github.com/bbepis/XUnity.AutoTranslator/releases)のReiPatcher版をダウンロードして解凍する。
    - 動作確認は[5.3.0](https://github.com/bbepis/XUnity.AutoTranslator/releases/tag/v5.3.0)で行なっています。`Assets`の一覧から[XUnity.AutoTranslator-ReiPatcher-5.3.0.zip](https://github.com/bbepis/XUnity.AutoTranslator/releases/download/v5.3.0/XUnity.AutoTranslator-ReiPatcher-5.3.0.zip)を選択してください。
2. `Steamクライアント > ライブラリ > Vertigo Remastered > 歯車マーク > 管理 > ローカルファイルを閲覧` をクリックして、Vertigo Remasteredのインストール先ディレクトリを開く。
3. 1で解凍された`SetupReiPatcherAndAutoTranslator.exe`を、2で開いたディレクトリに移動する。
4. 3で移動した`SetupReiPatcherAndAutoTranslator.exe`を実行すると、同じディレクトリ内に`vertigo (Patch and Run)`というファイルが生成される。
5. 4で生成された`vertigo (Patch and Run)`を実行すると、XUnity.AutoTranslatorがインストールされて、ゲームが起動する。
6. 5で起動したゲームは一旦閉じる。

## 日本語化パッチの導入

1. [日本語化パッチ](https://github.com/izayoi256/vertigo-remastered-ja/archive/refs/heads/master.zip)をダウンロードして解凍する。
2. `Steamクライアント > ライブラリ > Vertigo Remastered > 歯車マーク > 管理 > ローカルファイルを閲覧` をクリックして、Vertigo Remasteredのインストール先ディレクトリを開く。
3. 1で解凍されたファイルの内`Vertigo Remastered`ディレクトリの中身を、2で開いたディレクトリに移動する。ファイルはすべて上書きしてください。
    - `vertigo.exe`と`localize.bat`というファイルが同じディレクトリの中に入っていればOKです。
4. 3で移動した`localize.bat`を実行する。
5. `日本語化が完了しました。Enterを押して終了`というメッセージが表示されれば完了です。

## Linuxへの導入

XUnity.AutoTranslatorのBepInEx版を導入して、日本語化パッチの適用時に`localize.sh`を実行すれば可能だとは思いますが、動作未確認です。

# パッチの適用範囲

このパッチを適用すると下記のテキストが日本語化されます。

- 字幕全般
- ジャーナル全般
- UI全般 (一部を除く)

下記のテキストは日本語化されません。

- 各ステージ名
- 一部のUI
  - サンドボックス関係全般
- ジャーナルを除くゲーム内オブジェクトのテクスチャ全般

# 不具合報告

誤字、脱字、不具合があった際は、お手数ですが[@ilovenamichang](https://twitter.com/ilovenamichang)宛にお知らせいただくか、本リポジトリのIssuesにご報告ください。

# 免責事項

当パッチを利用して発生した、いかなる損害も責任を負いかねます。

# ライセンス

本プロジェクトのソースコードは[MIT License](./LICENSE.txt)の下で公開されています。ただし、以下のファイルのみ例外として[SIL Open Font License](./OFL.txt)に従います。

- Vertigo Remastered/Gothic-regular_u2019

# クレジット

- Vertigo Remastered © 2020 Zulubo Productions 
- 翻訳 © 2023 Qwert(Shotaro Hama) 
