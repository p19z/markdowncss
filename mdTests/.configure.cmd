:main
@setlocal
@pushd "%~dp0"
	@set FEXT_IN=md
	@set FEXT_OUT=html
	@call :generateMakeFileForMarkdownFiles_inThisDir
	@call :generateIndexFileForFutureHtmlFiles_inThisDir
@popd
@pause
@endlocal
@goto:eof

:generateIndexFileForFutureHtmlFiles_inThisDir

	@set idxFile=index.html
	@>%idxFile% echo ^<ul^>
	@for /r . %%f IN (*.%FEXT_IN%) do @>>%idxFile% (
		echo ^<li^>^<a href="./%%~nf.%FEXT_OUT%"^>%%~nf.%FEXT_OUT%^</a^>^</li^>
	)
	@>>%idxFile% echo ^</ul^>

@goto:eof

:generateMakeFileForMarkdownFiles_inThisDir

	@set idxFile=makefile
	>%idxFile% call :echoMakeFileHeader
	@for /r . %%f IN (*.md) do >>%idxFile% call :echoMakeFileSection "%%~nxf"

@goto:eof

:echoMakeFileHeader
	@REM all: \
	@REM   file1.ext \
	@REM   file2.ext

	@<NUL set /p=all:
	@for /r . %%f IN (*.%FEXT_IN%) do @(
		echo. \
		<NUL set /p"=  %%~nf.%FEXT_OUT%"
	)
	@echo.
@goto:eof

:echoMakeFileSection
	@REM
	@REM file.out: \
	@REM   file.in
	@REM
	@REM	cmd /c mdpl /OUT $@ $^

	@echo.
	@echo.%~n1.%FEXT_OUT%: \
	@echo.  %~nx1
	@echo.
	@echo.	cmd /c mdpl /OUT $@ $^^
)
@goto:eof
