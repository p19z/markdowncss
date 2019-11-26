
One meta-character shows "emphasis":

* The element shown as _testText_ was written as `_testText_`.
* The element shown as *testText* was written as `*testText*`.

Two meta-character makes the text "bold":

* The element shown as __testText__ was written as `__testText__`.
* The element shown as **testText** was written as `**testText**`.

Isolated meta-characters are **NOT** interchangeable:

* The element shown as _*testText*_ was written as `_*testText*_`.
* The element shown as *_testText_* was written as `*_testText_*`.

Coupled metacharacters are interchangeabile:

* The element shown as _**testText**_ was written as `_**testText**_`.
* The element shown as **_testText_** was written as `**_testText_**`.
* The element shown as __*testText*__ was written as `__*testText*__`.
* The element shown as *__testText__* was written as `*__testText__*`.

This section simply tests further unknown/undefined behavior:

* The element shown as _*_testText_*_ was written as `_*_testText_*_`.
* The element shown as *_*testText*_* was written as `*_*testText*_*`.
