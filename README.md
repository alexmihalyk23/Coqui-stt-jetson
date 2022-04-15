# Coqui-stt-jetson
# Установка
## Для правильной работы Coqui-stt на микрокомпьютере серии NVIDIA Jetson необходимо выполнить следующие шаги:


1. `git clone https://github.com/alexmihalyk23/Coqui-stt-jetson.git`
2. `cd coqui-stt-jetson`
3. `bash install.sh`

# Тестирование

## Для тестирования распознавания речи выполните следующую команду

`stt --model model.tflite --scorer wiki-ru-6gram.scorer --audio sample.wav`
