all: \
  README.html \
  examples\ex1.html

examples\ex1.html: \
  examples\ex1.md
	cmd /c mdpl /OUT $@ $^

README.html: \
  README.md
	cmd /c mdpl /OUT $@ $^
