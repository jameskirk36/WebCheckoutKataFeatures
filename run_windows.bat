@echo off

if "%~1" == "" (
	echo "Aborting.  Please provide an app url as a single argument"
) else (
	set checkout_url=%1
	echo "Running against app_host: %checkout_url%"
	bundle exec cucumber
)
