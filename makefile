all: \
  README.html \
  examples/ex1+master.html \
  examples/ex1+ref1.0.html \
  examples/ex1+staging.html


README.html: \
  README.md

	cmd /c mdpl /OUT $@ $^


examples/ex1+master.html: \
  examples/ex1+master.md

	cmd /c mdpl /OUT $@ $^


examples/ex1+ref1.0.html: \
  examples/ex1+ref1.0.md

	cmd /c mdpl /OUT $@ $^


examples/ex1+staging.html: \
  examples/ex1+staging.md

	cmd /c mdpl /OUT $@ $^
