#! /bin/bash
echo "sketch_paths=\"$(
    if [ 8 -ge 8 ];
    then
      echo '- avr/libraries/SPI/examples/BarometricPressureSensor
  - avr/libraries/SoftwareSerial/examples/TwoPortReceive
  - avr/libraries/Wire/examples/SFRRanger_reader
  - avr/libraries/tinyNeoPixel/examples/RGBWstrandtest
  # - avr/extras/CompileTestSketches/test_analog_read
  - avr/libraries/EEPROM/examples/eeprom_crc
  - avr/libraries/EEPROM/examples/eeprom_put
  - avr/libraries/EEPROM/examples/eeprom_read
  - avr/libraries/Wire/examples/digital_potentiometer
  - avr/libraries/megaTinyCore/examples/ModernRevSer
  - avr/libraries/SoftwareSerial/examples/SoftwareSerialExample
  - avr/libraries/tinyNeoPixel/examples/buttoncycler
  - avr/libraries/tinyNeoPixel/examples/simple
  - avr/libraries/tinyNeoPixel/examples/strandtest
  - avr/libraries/tinyNeoPixel_Static/examples/buttoncycler
  - avr/libraries/tinyNeoPixel_Static/examples/strandtest
  - avr/extras/ci/test_sketches_4k/serial_test
  - avr/extras/ci/test_sketches_2k/basic_test
  '
    elif [ matrix.device.available-flash-kB -ge 4 ]
    then
      echo '- avr/libraries/EEPROM/examples/eeprom_crc
  - avr/libraries/EEPROM/examples/eeprom_put
  - avr/libraries/EEPROM/examples/eeprom_read
  - avr/libraries/Wire/examples/digital_potentiometer
  - avr/libraries/megaTinyCore/examples/ModernRevSer
  - avr/libraries/SoftwareSerial/examples/SoftwareSerialExample
  - avr/libraries/tinyNeoPixel/examples/buttoncycler
  - avr/libraries/tinyNeoPixel/examples/simple
  - avr/libraries/tinyNeoPixel/examples/strandtest
  - avr/libraries/tinyNeoPixel_Static/examples/buttoncycler
  - avr/libraries/tinyNeoPixel_Static/examples/strandtest
  - avr/extras/ci/test_sketches_4k/serial_test
  - avr/extras/ci/test_sketches_2k/basic_test
  '
    else
      echo '- avr/extras/ci/test_sketches_2k/basic_test
  '
    fi
  )\""