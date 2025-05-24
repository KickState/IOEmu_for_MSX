# LoRaユニットのパラメータ設定

[IOEμ Multiplex 3-in-1 MO](/Multiplex_3-in-1_MO/readme_multiplex_3-in-1_mo.md)、[Motor-Drive Unit](/MotorDriver_Unit/readme_motordriver_unit.md)、[Remo-Con Unit](/RemoCon_Unit/readme_remocon_unit.md)で使用するM5Stack社の[LoRaユニット Unit LoRaE220-920](https://docs.m5stack.com/en/unit/LoRaE220-JP%20Unit)は、初回使用時に適切なレジスタ値を設定する必要があります。

ここではMSX本体とMultiplex 3-in-1 MO(FW Rev.1.1.0以降)を使用して、LoRaユニットのレジスタを設定する方法を説明します。
レジスタの各設定値に関しては、[Motor-Drive Unit](/MotorDriver_Unit/readme_motordriver_unit.md)を参照してください。

以下が設定手順です。ご利用にあたってはIOEμの免責事項をご確認ください。

* LoRaユニットのディップスイッチをMode 3（Config/DeepSleepモード）に設定してください。
* LoRaユニットをMultiplexのGroveポートに接続してください。
* Multiplexのスライドスイッチ（Groveポートの電源スイッチ）をONにして下さい。
* MultiplexのディップスイッチのSW1は必ずOFFにしてください。ONの場合、パラメータ設定に失敗します。※ SW1は通常利用時もOFFです。
* MSX本体の電源をオフにした状態でMuletiplexを本体スロットに挿入し、MSX本体の電源をONにしてください。
* BASIC画面が起動した後、レジスタ設定用のサンプルプログラム [SETLORA.BAS](/MISC/LoRa_Unit/sample_MSX-BASIC/SETLORA.BAS) を実行してください。
* プログラムが終了すると、設定されたレジスタ値が表示されます。「RES: C1,00,08」の後に続く8バイトの値(HEX)が書き込まれたパラメータ値です。
* 表示されたレジスタ値が期待値と異なる場合は、手順で示したスイッチの設定等に間違いがないかを見直して下さい。
* 正常に書き込まれた場合は、MSXの電源をオフし、LoRaユニットのディップスイッチをMode 0（通信モード）に設定してください。

以上でLoRaユニットのレジスタ設定は完了です。設定したレジスタ値は電源オフ後も保持されていますので、このレジスタ設定は初回利用時のみの作業です。最後にMode 0（通信モード）に設定することを忘れないで下さい。

![LoRa Unit](image/lora_1.jpg)

