# IOEμ for MSX

## 概要

IOEμシリーズは、MSX実機用カートリッジとして使用できるIOエミュレーターです。

主にPIC18F Qシリーズの8-bitマイコンを使用してMSXの各種IO機能をエミュレートしています。

例えば、「SCC-Emu」はMSX実機で使用できるSCC音源のエミュレーターです。

## 種類
IOEμは、SCC-Emuを搭載する製品を中心に以下の6つのカテゴリで計14種を公開しています。
それぞれの特徴、使用方法等に関しては、リンク先の各フォルダ内の「readme_xxx.md」ファイルをご参照ください。

最新作は、Multi-Mapper対応のFlash-ROMカートリッジ 「[ROM MORPH VAULT](/ROM_MORPH_VAULT/readme_rom_morph_vault.md)」 です。ROM MORPH VAULTは、ROM MORPHの派生モデルでSRAM-BACKUP Emuに対応しています。また、そのVAULTの技術を応用して、IOEμシリーズの原点「SCC-Emu Simplex」にPAC機能(SRAM-BACKUP Emu機能)を追加した「[SCC-PAC Emu](/SCC-PAC_Emu_12bit-DAC/readme_scc-pac_emu_12.md)」もリリースしました。

### (1) SOUND CARTRIDGE Emu :
* [IOEμ: SCC-Emu Plus with 1Mbit RAM](/SCC-Emu_Plus_1Mbit/readme_scc-emu_plus.md)
* [IOEμ: SCC-Emu Plus RAM QUAD with 2Mbit RAM](/SCC-Emu_Plus_2Mbit_RAM_QUAD/readme_scc-emu_plus_ram_quad.md)  

### (2) FLASH-ROM用MegaCON-Emu :
* [IOEμ: ROM MORPH – Multi-Mapper Support with 4Mbit Flash-ROM](/ROM_MORPH/readme_rom_morph.md)  **New !**
* [IOEμ: ROM MORPH VAULT – Multi-Mapper Support with Flash-ROM and SRAM Backup Emulation](/ROM_MORPH/readme_rom_morph.md)  **New !**

### (3) MASK-ROM再生用MegaCON-Emu :
* [IOEμ: MegaSCC-Emu for KONAMI-SCC MASK-ROM](/MegaSCC-Emu/readme_megascc-emu.md)  
* [IOEμ: MegaCON-Emu  for ASCII8K MASK-ROM](/MegaCON-Emu_ASCII8K/readme_megacon-emu_ascii8k.md)  

### (4) SCC-PAC Emu :
* [IOEμ: SCC-PAC Emu with 12-bit DAC](/SCC-PAC_Emu_12bit-DAC/readme_scc-pac_emu_12.md)  **New !**
* [IOEμ: SCC-PAC Emu with 15-bit DAC](/SCC-PAC_Emu_15bit-DAC/readme_scc-pac_emu_15.md)  **New !**

### (5) Simplex :
* [IOEμ: SCC-Emu Simplex with 12-bit DAC](/SCC-Emu_Simplex_12bit-DAC/readme_scc-emu_12.md)
* [IOEμ: SCC-Emu Simplex with 15-bit DAC](/SCC-Emu_Simplex_15bit-DAC/readme_scc-emu_15.md)
* [IOEμ: DCSG-Emu Simplex with built-in DAC](/DCSG-Emu_Simplex/readme_dcsg-emu.md)
* [IOEμ: SynthDAC-Emu Simplex](/SynthDAC-Emu_Simplex/readme_synthdac-emu.md)

### (6) Multiplex :
* [IOEμ: Multiplex 3-in-1 MO](/Multiplex_3-in-1_MO/readme_multiplex_3-in-1_mo.md)
* [Motor-Driver Unit for IOEμ](/MotorDriver_Unit/readme_motordriver_unit.md)
* [Remo-Con Unit for IOEμ](/RemoCon_Unit/readme_remocon_unit.md)

### (7) 機能拡張 :
* [IOEμ: SlotExpander Lite](/SlotExpander_Lite/readme_slotexpander_lite.md)
* [IOEμ: MemMappper-Emu](/MemMapper-Emu/readme_memmapper-emu.md) 


その他、MISCフォルダにはOneChipBook向けのInternal Expansion Cardサイズの[Universal Boardのガーバーデータ](/MISC/Universal_board_for_OneChipBook/readme_universal_board_for_onechipbook.md)を置いています。例えば、DCSG-Emu Simplex(PWM版)のファームウェアを書き込んだPICマイコンを、このUniversal Boardに実装すれば、OneChipBookの内蔵スロットに組み込むことも可能です。

## 免責事項

本ソフトウェアおよびハードウェアの設計データ（以下、「本コンテンツ」）は、個人で開発したもので、現状のままで提供しています。ご使用にあたっては、自己責任でお願いします。本コンテンツの正確さや完全性、特定の目的に対する適合性については保証できませんので、あらかじめご了承ください。

提供者は、本コンテンツの利用または利用不能に関連して発生するいかなる損害（直接的、間接的を問わず、データの損失、機器の破損、業務の中断、利益の損失、その他あらゆる種類の損害）に対して、一切の責任を負いません。また、提供者は本コンテンツを改善・修正する義務も負いません。ご利用の際は、自己判断でお願いします。

著作権および権利の保持について
本コンテンツに関する著作権やその他の権利は、提供者に帰属します。個人利用は自由にご使用いただけますが、再配布や商用利用をご希望の場合は、事前に提供者までご連絡ください。

本免責事項に記載されている内容は、提供者が本コンテンツに対する権利を放棄するものではありません。

© 2024-2026 [KickState](https://x.com/kickstate7). All rights reserved.

## Disclaimer

This software and hardware design data (hereinafter referred to as "the Content") is developed independently and provided "as is." By using it, you agree to take full responsibility. The accuracy, completeness, or suitability for any particular purpose of the Content is not guaranteed, and you acknowledge this before use.

The provider shall not be liable for any damages arising from the use or inability to use the Content, including but not limited to data loss, business interruption, loss of profits, equipment damage, or any other types of damages, whether direct or indirect. The provider is also not obligated to improve or modify the Content. Please use it at your own discretion.

Copyright and Rights Retention
All copyrights and other rights related to the Content belong to the provider. You are free to use the Content for personal purposes; however, commercial use and redistribution require prior approval from the provider.

The inclusion of this disclaimer does not constitute a waiver of the provider's rights over the Content.


© 2024-2026 [KickState](https://x.com/kickstate7). All rights reserved.

