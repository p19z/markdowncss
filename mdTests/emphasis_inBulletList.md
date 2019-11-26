
One metacharacter shows _emphasis_:

* The element shown as _testText_ was written as `_testText_`.
* The element shown as *ELEMENT* was written as `*ELEMENT*`.

Two metacharacter make the text **bold**:

* The element shown as _testText_ was written as `_testText_`.
* The element shown as **testText** was written as `**testText**`.

In some cases the metacharacters are interchangeable:

* The element shown as _*testText*_ was written as `_*testText*_`.
* The element shown as *_testText_* was written as `*_testText_*`.

Another example of interchangeability of the metacharacters:

* The element shown as _**testText**_ was written as `_**testText**_`.
* The element shown as **_testText_** was written as `**_testText_**`.
* The element shown as __*testText*__ was written as `__*testText*__`.
* The element shown as *__testText__* was written as `*__testText__*`.

This section simply tests further unknown/undefined behaviour:

* The element shown as _*_testText_*_ was written as `_*_testText_*_`.
* The element shown as *_*testText*_* was written as `*_*testText*_*`.
