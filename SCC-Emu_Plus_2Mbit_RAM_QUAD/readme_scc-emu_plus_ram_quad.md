# IOEμ: SCC-Emu Plus - RAM QUAD - 

## 1. 概要

* SCC-Emu Plus RAM QUADは、8-bit PICマイコンによる「SOUND CARTRIDGE」のMSX実機用エミュレーターです。
* メモリはオリジナルの4倍、2MbitのRAMを搭載しています。
* SCC機能は互換モード、固有モードの両モードに対応しています。
* 2つの8-bit PICマイコン(Main:PIC18F, Sub:PIC16F)を使用し、SCC音源機能とSCCマッパー互換のバンク制御を実現しています。
* SNATCHER、及びKONAMIゲームコレクションVol.3のSCC版グラディウス、ツインビーの起動を確認しています。
* メモリ制御はSCCマッパーのメガロムと互換がありますので、2Mbit以下のROMデータのロードメモリとしても使用できます。但し、揮発性メモリです。
* SCCレジスタ、BANKレジスタへのアクセスにはWaitが挿入されますが、RAMへのアクセスにはSCC-Emu PlusはWaitを挿入しません。
* このため、8-bit PICによるエミュレーションでもゲームプレイへの違和感は少なく抑えられていると思います（ゼロではありません）。
* 入手性の良い現役の安価なPICマイコンを使用しており、その周辺回路も含めて、2025年現在でもDigikey等入手可能な部品で設計しています。

## 2. 外観

![SCC-Emu_Plus](image/SCC-Emu_Plus_RAM_QUAD_1.jpg)

## 3. 使用方法

SCC-Emu Plus with 1Mbit版と基本的に同じです。SCC-Emu Plus with 1Mbit版の[Readme](/SCC-Emu_Plus_1Mbit/readme_scc-emu_plus.md)を参照ください。

## 4. 使用上の注意

SCC-Emu Plus with 1Mbit版と基本的に同じです。SCC-Emu Plus with 1Mbit版の[Readme](/SCC-Emu_Plus_1Mbit/readme_scc-emu_plus.md)を参照ください。

## 5. PICマイコン用Firmwareの書き込み方法

F/Wの書込み方法はSCC-Emu Plus with 1Mbit版と同じですが、F/Wは[RAM QUAD](/SCC-Emu_Plus_2Mbit_RAM_QUAD/firmware/)用を使用してください。F/W書込み方法はSCC-Emu Plus with 1Mbit版の[Readme](/SCC-Emu_Plus_1Mbit/readme_scc-emu_plus.md)を参照ください。

## 6. 基板の発注方法

基板の発注方法を例示しますが、利用者の責任において実施して下さい。[IOEμの免責事項](../readme.md)を参照下さい。

基板メーカーに[JLCPCB](https://jlcpcb.com/jp)を使用される場合は、gerberフォルダ内の[ZIPファイル（ガーバーファイル）](/SCC-Emu_Plus_2Mbit_RAM_QUAD/gerber/)をそのまま[アップロード](https://cart.jlcpcb.com/jp/quote?orderType=1&stencilLayer=2&stencilWidth=100&stencilLength=100)してください。

※ RAM QUADの基板は1Mbit版とは設計が異なりますので、ガーバーデータは[RAM QUAD](/SCC-Emu_Plus_2Mbit_RAM_QUAD/gerber/)用を使用してください。

主な基板仕様は以下の通りです。

* 寸法：ガーバーファイル（ZIPファイル）のアップロードで自動入力されます。
* 層数：2層
* PCB厚さ：1.6mm
* 表面仕上げ：お好みで。ENIGは品質が良いですが、費用は高くなります。
* ビア処理：レジストカバー
* カードエッジコネクタ：YES (表面仕上げでENIGを使用しない場合もYESとしてください)
* 面取り：30°
* 端面スルーホール：No
* エッジメッキ：No

その他の項目はお好みで設定ください。


