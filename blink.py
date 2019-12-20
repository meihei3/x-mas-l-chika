from polyphony import testbench, module, is_worker_running
from polyphony.io import Port
from polyphony.typing import bit

@module
class Blink:
    def __init__(self, interval):
        self.led = Port(bit, 'out')
        self.interval = interval
        self.append_worker(self.main)

    def main(self):
        led_bit:bit = 1
        while is_worker_running():
            self.led(led_bit)
            led_bit= 1 - led_bit
            self._wait()

    def _wait(self):
        for i in range(self.interval // 2):
            pass

blink = Blink(10)
