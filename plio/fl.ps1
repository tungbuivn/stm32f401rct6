# rm .pio/build/firmware.bin
# pio run

&"c:\Program Files (x86)\STMicroelectronics\STM32 ST-LINK Utility\ST-LINK Utility\ST-LINK_CLI.exe"  -c id=0 swd lpm crst -Q -P "..\.pio\build\stm32f401RTC6\firmware.bin" 0x08000000 -V after_programming -score -Rst