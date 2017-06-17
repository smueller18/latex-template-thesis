#!/usr/bin/env python3|\nextline{32}{imports, copyright, parameter initialization, logging initialization}|
modbus_definition_file = __dirname__ + "/config/modbus-definition.json"
key_schema = __dirname__ + "/config/key.avsc"
value_schema = __dirname__ + "/config/value.avsc"

modbus_reader = ModbusReader(MODBUS_HOST, MODBUS_PORT, MODBUS_UNIT, modbus_definition_file, float_low_byte_first=True)


def get_data():
    try:
        return {
            'key': {'timestamp': int(time.time() * 1000)},
            'value': modbus_reader.read_all_values()
        }|\nextline[4]{54}{exception handling for modbus_reader.read_all_values()}|
producer = AvroLoopProducer(KAFKA_HOSTS, SCHEMA_REGISTRY_URL, TOPIC, key_schema, value_schema)

producer.loop(get_data, interval=PUSH_INTERVAL, unit=Unit.SECOND, begin=Begin.FULL_SECOND)
