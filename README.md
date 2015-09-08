# simply-applocker-rules

Примитивнейшее средство для блокировки мусорного ПО.

Запускать от администратора. Если поломается - в безопасном режиме отключить автозапуск службы AppIDSvc ("Удостоверение приложения").

Параметры командной строки:
* *help* - краткая справка
* *saveonly* - сохранить xml без импорта
* *merge* - обновить только новые правила

Формат команды, добавляющей правило:
```bat
addrules Name  PublisherName  [ProductName [BinaryName [ExceptionCondition1 ExceptionBinaryVersionRange1 [ExceptionCondition2 ExceptionBinaryVersionRange2 [...]]]]]
```

ProductName и BinaryName для правил без исключений можно опустить, в этом случае их значения будут установлены в "*".

Правила с исключениями удобно разбивать на несколько строк (обратите внимание на символ ` в конце всех строк кроме последней):
```bat
addrules Name  PublisherName  ProductName  BinaryName `
	 ExceptionCondition1  ExceptionBinaryVersionRange1 `
	 ExceptionCondition2  ExceptionBinaryVersionRange2 `
	 ExceptionCondition3  ExceptionBinaryVersionRange3
```

Что такое AppLocker? http://technet.microsoft.com/ru-ru/library/ee424367(v=ws.10).aspx
