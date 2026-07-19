@echo offf
setlocal enabledelayedexpansion


:: create config file first time
if not  exist settings.cfg (
    echo username=admin > settings,cfg
    echo theme=dark >> settings.cfg
    echo language=bn >> settings.cfg
    echo Config file created
)


