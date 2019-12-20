from polyphony import testbench, module, is_worker_running
from polyphony.io import Port
from polyphony.typing import bit


# onとoffの数字に名前付け
OFF = 0
ON = 1


def switch(data_bit: bit) -> bit:
    """
    1bitの入力を反転する
    """
    return 1 - data_bit


@module
class Blinks:
    """
    FPGAボードに乗っているLEDを光らせる
    """
    def __init__(self, interval):
        # 全18個分のLED
        self.led00 = Port(bit, 'out')
        self.led01 = Port(bit, 'out')
        self.led02 = Port(bit, 'out')
        self.led03 = Port(bit, 'out')
        self.led04 = Port(bit, 'out')
        self.led05 = Port(bit, 'out')
        self.led06 = Port(bit, 'out')
        self.led07 = Port(bit, 'out')
        self.led08 = Port(bit, 'out')
        self.led09 = Port(bit, 'out')
        self.led10 = Port(bit, 'out')
        self.led11 = Port(bit, 'out')
        self.led12 = Port(bit, 'out')
        self.led13 = Port(bit, 'out')
        self.led14 = Port(bit, 'out')
        self.led15 = Port(bit, 'out')
        self.led16 = Port(bit, 'out')
        self.led17 = Port(bit, 'out')
        self.led20 = Port(bit, 'out')
        self.led21 = Port(bit, 'out')
        self.led22 = Port(bit, 'out')
        self.led23 = Port(bit, 'out')
        self.led24 = Port(bit, 'out')
        self.led25 = Port(bit, 'out')
        self.led26 = Port(bit, 'out')
        self.led27 = Port(bit, 'out')
        self.interval = interval
        self.append_worker(self.main)

    def main(self):
        # 初期化
        led_bit_ptn0:bit = OFF
        led_bit_ptn1:bit = ON

        # waitの間隔でチカチカ光らせるループ
        while is_worker_running():
            self.led00(led_bit_ptn0)
            self.led01(led_bit_ptn1)
            self.led02(led_bit_ptn0)
            self.led03(led_bit_ptn1)
            self.led04(led_bit_ptn0)
            self.led05(led_bit_ptn1)
            self.led06(led_bit_ptn0)
            self.led07(led_bit_ptn1)
            self.led08(led_bit_ptn0)
            self.led09(led_bit_ptn1)
            self.led10(led_bit_ptn0)
            self.led11(led_bit_ptn1)
            self.led12(led_bit_ptn0)
            self.led13(led_bit_ptn1)
            self.led14(led_bit_ptn0)
            self.led15(led_bit_ptn1)
            self.led16(led_bit_ptn0)
            self.led17(led_bit_ptn1)
            self.led20(led_bit_ptn0)
            self.led21(led_bit_ptn1)
            self.led22(led_bit_ptn0)
            self.led23(led_bit_ptn1)
            self.led24(led_bit_ptn0)
            self.led25(led_bit_ptn1)
            self.led26(led_bit_ptn0)
            self.led27(led_bit_ptn1)
            led_bit_ptn0 = switch(led_bit_ptn0)
            led_bit_ptn1 = switch(led_bit_ptn1)
            self._wait()

    def _wait(self):
        for i in range(self.interval):
            pass

# 1 interval = 1 clock = 50 MHz = 20 ns
# 1 s = 50,000,000*20 ns = 50,000,000 interval
# 4 clockの遅延を考慮
blinks = Blinks(49999996)
