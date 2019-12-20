from polyphony import testbench, module, is_worker_running
from polyphony.io import Port
from polyphony.typing import bit


ON = 1


def switch(data_bit:bit) -> bit:
    return 1 - data_bit


@module
class Blink:
    def __init__(self, interval):
        self.led = Port(bit, 'out')
        self.interval = interval
        self.append_worker(self.main)

    def main(self):
        led_bit:bit = ON
        while is_worker_running():
            self.led(led_bit)
            led_bit = switch(led_bit)
            self._wait()

    def _wait(self):
        for i in range(self.interval // 2):
            pass


blink = Blink(20 - 4)

