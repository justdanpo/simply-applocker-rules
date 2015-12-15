# simply-applocker-rules

Примитивнейшее средство для блокировки мусорного ПО.

Если поломается - в безопасном режиме отключить автозапуск службы AppIDSvc ("Удостоверение приложения").

Параметры командной строки:
* *help* - краткая справка
* *saveonly* - сохранить xml без импорта
* *merge* - обновить только новые правила

Формат команды, добавляющей правило:
```powershell
#в одну из коллекций - Exe, Dll или Msi
addrule "Exe"|"Dll"|"Msi"  Name  PublisherName  [ProductName [BinaryName [ExceptionCondition1 ExceptionBinaryVersionRange1 [ExceptionCondition2 ExceptionBinaryVersionRange2 [...]]]]]

#в коллекции Exe и Msi
addrules Name  PublisherName  [ProductName [BinaryName [ExceptionCondition1 ExceptionBinaryVersionRange1 [ExceptionCondition2 ExceptionBinaryVersionRange2 [...]]]]]

#правила пути
addpathrule "Exe"|"Dll"|"Msi"  Name  FilePath

addpathrules Name  FilePath
```

ProductName и BinaryName для правил без исключений можно опустить, в этом случае их значения будут установлены в "*".

Правила с исключениями удобно разбивать на несколько строк (обратите внимание на символ ` в конце всех строк кроме последней):
```powershell
addrules Name  PublisherName  ProductName  BinaryName `
	 ExceptionCondition1  ExceptionBinaryVersionRange1 `
	 ExceptionCondition2  ExceptionBinaryVersionRange2 `
	 ExceptionCondition3  ExceptionBinaryVersionRange3
```

Что такое AppLocker? http://technet.microsoft.com/ru-ru/library/ee424367(v=ws.10).aspx
