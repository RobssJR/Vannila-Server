set "world=.\world"
set "nether=.\world_nether\DIM-1"
set "end=.\world_the_end\DIM1"

set "destino=C:\Users\Robso\AppData\Roaming\gdlauncher_next\instances\Vanilla\saves\server"

echo Copiando a pasta...
xcopy /E /Y "%world%" "%destino%"
xcopy /E /Y "%nether%" "%destino%/DIM-1"
xcopy /E /Y "%end%" "%destino%/DIM1"

echo Pasta copiada com sucesso!
pause
