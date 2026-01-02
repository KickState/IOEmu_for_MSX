# IOEμ for MSX

## 概要

IOEμシリーズは、MSX実機用のカートリッジとして使用できるIOエミュレーターです。

主にPIC18F Qシリーズの8-bitマイコンを使用してMSXの各種IO機能をエミュレートしています。

例えば、「SCC-Emu」はMSX実機で使用できるSCC音源のエミュレーターです。

## 種類
IOEμは、ざっくり分類するとSCC-Emu音源を搭載するIOEμと、MSXの機能を拡張するIOEμの2種類があります。

SCC-Emu音源を搭載するIOEμには、単機能版のSimplex（4種）、多機能版のMultiplex(SCC+DCSG+MIDI/Grove-Port)、Mega-ROMコントローラ（2種）、1Mbit/2Mbit(RAM QUAD) SRAMを搭載するSOUND CARTRIDGE Emuシリーズ "SCC-Emu Plus"があり、MSXの機能拡張用IOEμには、拡張スロットのSlotExpander Lite、マッパーRAMのMemMapper-Emuを公開しています。

その他にもMultiplexに搭載するGroveポートを経由して制御可能なMotor-Driverユニット、Remote-Controlユニットも用意しています。Motor-DriverユニットはMSX0 Stack/Cardから制御することも可能です。

* [IOEμ: SCC-Emu Simplex with 12-bit DAC](/SCC-Emu_Simplex_12bit-DAC/readme_scc-emu_12.md)
* [IOEμ: SCC-Emu Simplex with 15-bit DAC](/SCC-Emu_Simplex_15bit-DAC/readme_scc-emu_15.md)
* [IOEμ: SCC-Emu Plus with 1Mbit](/SCC-Emu_Plus_1Mbit/readme_scc-emu_plus.md)
* [IOEμ: SCC-Emu Plus with 2Mbit (RAM QUAD)](/SCC-Emu_Plus_2Mbit_RAM_QUAD/readme_scc-emu_plus_ram_quad.md)  **New !**
* [IOEμ: DCSG-Emu Simplex with built-in DAC](/DCSG-Emu_Simplex/readme_dcsg-emu.md)
* [IOEμ: SynthDAC-Emu Simplex](/SynthDAC-Emu_Simplex/readme_synthdac-emu.md)
* [IOEμ: Multiplex 3-in-1 MO](/Multiplex_3-in-1_MO/readme_multiplex_3-in-1_mo.md)
* [IOEμ: MegaSCC-Emu](/MegaSCC-Emu/readme_megascc-emu.md)  
* [IOEμ: MegaCON-Emu ASCII8K](/MegaCON-Emu_ASCII8K/readme_megacon-emu_ascii8k.md)  
* [IOEμ: SlotExpander Lite](/SlotExpander_Lite/readme_slotexpander_lite.md)  **New !**
* [IOEμ: MemMappper-Emu](/MemMapper-Emu/readme_memmapper-emu.md)  **New !**
* [Motor-Driver Unit for IOEμ](/MotorDriver_Unit/readme_motordriver_unit.md)
* [Remo-Con Unit for IOEμ](/RemoCon_Unit/readme_remocon_unit.md)

それぞれの特徴、使用方法等に関しては、各フォルダ内の「readme_xxx.md」ファイルをご参照ください。

その他、MISCフォルダにはOneChipBook向けのInternal Expansion Cardサイズの[Universal Boardのガーバーデータ](/MISC/Universal_board_for_OneChipBook/readme_universal_board_for_onechipbook.md)を置いています。例えば、DCSG-Emu Simplex(PWM版)のファームウェアを書き込んだPICマイコンを、このUniversal Boardに実装すれば、OneChipBookの内蔵スロットに組み込むことも可能です。

## 免責事項

本ソフトウェアおよびハードウェアの設計データ（以下、「本コンテンツ」）は、個人で開発したもので、現状のままで提供しています。ご使用にあたっては、自己責任でお願いします。本コンテンツの正確さや完全性、特定の目的に対する適合性については保証できませんので、あらかじめご了承ください。

提供者は、本コンテンツの利用または利用不能に関連して発生するいかなる損害（直接的、間接的を問わず、データの損失、機器の破損、業務の中断、利益の損失、その他あらゆる種類の損害）に対して、一切の責任を負いません。また、提供者は本コンテンツを改善・修正する義務も負いません。ご利用の際は、自己判断でお願いします。

著作権および権利の保持について
本コンテンツに関する著作権やその他の権利は、提供者に帰属します。個人利用は自由にご使用いただけますが、再配布や商用利用をご希望の場合は、事前に提供者までご連絡ください。

本免責事項に記載されている内容は、提供者が本コンテンツに対する権利を放棄するものではありません。

© 2024-2025 [KickState](https://x.com/kickstate7). All rights reserved.

## Disclaimer

This software and hardware design data (hereinafter referred to as "the Content") is developed independently and provided "as is." By using it, you agree to take full responsibility. The accuracy, completeness, or suitability for any particular purpose of the Content is not guaranteed, and you acknowledge this before use.

The provider shall not be liable for any damages arising from the use or inability to use the Content, including but not limited to data loss, business interruption, loss of profits, equipment damage, or any other types of damages, whether direct or indirect. The provider is also not obligated to improve or modify the Content. Please use it at your own discretion.

Copyright and Rights Retention
All copyrights and other rights related to the Content belong to the provider. You are free to use the Content for personal purposes; however, commercial use and redistribution require prior approval from the provider.

The inclusion of this disclaimer does not constitute a waiver of the provider's rights over the Content.


© 2024-2025 [KickState](https://x.com/kickstate7). All rights reserved.

