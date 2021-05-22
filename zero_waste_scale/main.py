import asyncio
import json
import time

import board
import busio
import hx711
import websockets
from adafruit_pn532.i2c import PN532_I2C

# Constants
REFERENCE_UNIT = -2053.4638810934416
NFC_PIN_1 = 5
NFC_PIN_2 = 6
NR_SCALE_READS = 5
API_URL = 'ws://89.212.198.159:8000/ws/'

# Setup nfc reader
i2c = busio.I2C(board.SCL, board.SDA)
pn532 = PN532_I2C(i2c)
pn532.SAM_configuration()

# Setup scale sensor.
hx = hx711.HX711(NFC_PIN_1, NFC_PIN_2)
hx.set_reading_format("MSB", "MSB")
hx.reset()
hx.tare()
hx.set_reference_unit(REFERENCE_UNIT)


# Connect to server with socket
async def loop():
    async with websockets.connect(API_URL) as sock:
        while True:
            # Read tag and weight.
            uid = pn532.read_passive_target(timeout=0.5)
            weight = hx.get_weight(NR_SCALE_READS)

            print(uid, weight)

            data = {
                'body': {
                    '2': weight,
                },
                'headers': {
                    'messageType': 'scale-measurement',
                    'eventTime': int(time.time()),
                    'localTime': 1621719625,
                    'ack': False,
                    'apiVersion': 1,
                },
            }

            if uid is not None:
                uid = ''.join(format(x, '02x') for x in uid)
                data['body']['1'] = uid

            await sock.send(json.dumps(data))

            time.sleep(0.1)


asyncio.get_event_loop().run_until_complete(loop())
