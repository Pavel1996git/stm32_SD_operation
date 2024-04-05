#stm32 SD OPERATION

### Назначение

Библиотека предназначена для считывания данных с SD-карты и их последующей обработки, например, для передачи по USART.

### Установка и использование

1. Поместите исполняемые файлы в корневую директорию вашего проекта или в соответствующую поддиректорию, например, `libraries/`.

2. Включите заголовочные файлы вашей библиотеки в свой проект.

### Зависимости и требования

- Для работы библиотеки необходима библиотека FatFs, портированная на STM32. Настройте работу этой библиотеки, например, через CubeMX.
- Добавьте функцию `SDTimer_Handler` в обработчик прерываний от системных часов.

```c
void SDTimer_Handler(void)
{
    if(Timer1 > 0)
        Timer1--;

    if(Timer2 > 0)
        Timer2--;
}
```
Подробнее:

Библиотека работает с использованием портированной на STM32 библиотеки FatFs. Для ее установки следует настроить работу данной библиотеки, например, через CubeMX. Файлы библиотеки FatFs обычно размещаются в каталоге libraries/f103c8t6_SD, где содержатся все необходимые компоненты. Кроме того, для корректной работы библиотеки следует добавить функцию SDTimer_Handler в обработчик прерываний от системных часов. Это требуется для обеспечения правильной работы библиотеки.

В связи с тем, что библиотека FatFs не может обрабатывать большие временные задержки во время операций с данными, моя библиотека отключает обработку прерываний системных часов во время обработки данных. Вместо этого для создания временных задержек используются другие методы, такие как таймеры или операционная система. Для этого применяется библиотека timerDelay, которая позволяет создавать задержки с использованием доступных таймеров.

Также доступна ссылка на репозиторий библиотеки: github.com:Pavel1996git/stm32pointTimer.git.

### Примеры использования

В приведенном ниже примере показано, как использовать библиотеку для обработки данных. Метод `readFileAndProcessData` используется для чтения данных из файла "data.bin" и передачи буфера в функцию `processBuffer`, которая выполняет обработку этих данных.

```c
readFileAndProcessData("data.bin", processBuffer);
```

### Документация API

Документация по API библиотеки не предоставлена в данном файле. Пожалуйста, обратитесь к исполняемым файлам для получения дополнительной информации.

### Лицензирование

Библиотека распространяется под лицензией MIT.

### Помощь и обратная связь

Если у вас возникли вопросы или вам требуется помощь, пожалуйста, свяжитесь с разработчиком по адресу электронной почты: arruin1995@gmail.com.

### Purpose

The library is designed for reading data from an SD card and processing it, for example, for transmission via USART.

### Installation and Usage

1. Place the executable files in the root directory of your project or in the appropriate subdirectory, for example, `libraries/`.
   
2. Include the header files of your library in your project.

### Dependencies and Requirements

- The library requires the FatFs library ported to STM32. Configure the operation of this library, for example, through CubeMX.
- Add the `SDTimer_Handler` function to the interrupt handler from the system clock.

```c
void SDTimer_Handler(void)
{
    if(Timer1 > 0)
        Timer1--;

    if(Timer2 > 0)
        Timer2--;
}
```
Details:

The library works using the FatFs library ported to STM32. To install it, configure the operation of this library, for example, through CubeMX. The FatFs library files are usually located in the libraries/f103c8t6_SD directory, where all the necessary components are located. Additionally, to ensure the proper operation of the library, it is necessary to add the SDTimer_Handler function to the interrupt handler from the system clock.

Since the FatFs library cannot handle large time delays during data operations, my library disables the processing of system clock interrupts during data processing. Instead, other methods such as timers or operating systems are used to create time delays. For this purpose, the timerDelay library is used, which allows creating delays using available timers.

A link to the library repository is also available: github.com:Pavel1996git/stm32pointTimer.git.

### Usage Examples

The example below demonstrates how to use the library to process data. The readFileAndProcessData method is used to read data from the "data.bin" file and pass the buffer to the processBuffer function, which processes this data.
```c
readFileAndProcessData("data.bin", processBuffer);
```

### API Documentation

API documentation for the library is not provided in this file. Please refer to the executable files for additional information.

### Licensing

The library is distributed under the MIT license.

### Help and Feedback

If you have any questions or need assistance, please contact the developer at the email address: arruin1995@gmail.com.

