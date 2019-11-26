all: \
  README.html \
  examples/ex1+cssV1.html \
  examples/ex1+staging.html


README.html: \
  README.md

	cmd /c mdpl /OUT $@ $^


examples/ex1+cssV1.html: \
  examples/ex1+cssV1.md

	cmd /c mdpl /OUT $@ $^


examples/ex1+staging.html: \
  examples/ex1+staging.md

	cmd /c mdpl /OUT $@ $^
