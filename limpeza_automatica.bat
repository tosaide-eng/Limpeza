@echo off
title Limpeza Multi-Browser - Provedor
color 0A

echo ======================================================
echo   EXECUTANDO LIMPEZA: COOKIES + CACHE + TEMP
echo   (HISTORICO E SENHAS PRESERVADOS)
echo ======================================================

:: 1. FECHAR NAVEGADORES (Obrigatório para limpar Cookies)
echo [+] Fechando navegadores para limpeza...
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im firefox.exe >nul 2>&1
timeout /t 2 >nul

:: 2. LIMPEZA DE PASTAS DO WINDOWS
echo [+] Limpando arquivos temporarios do sistema...
del /s /f /q "%temp%\*.*" >nul 2>&1
for /d %%p in ("%temp%\*") do rmdir /s /q "%%p" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%p in ("C:\Windows\Temp\*") do rmdir /s /q "%%p" >nul 2>&1
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1

:: 3. LIMPEZA DO GOOGLE CHROME
echo [+] Limpando Cookies e Cache do Chrome...
del /f /q "%LocalAppData%\Google\Chrome\User Data\Default\Cookies" >nul 2>&1
del /f /q "%LocalAppData%\Google\Chrome\User Data\Default\Network\Cookies" >nul 2>&1
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache" >nul 2>&1
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Code Cache" >nul 2>&1

:: 4. LIMPEZA DO MICROSOFT EDGE
echo [+] Limpando Cookies e Cache do Edge...
del /f /q "%LocalAppData%\Microsoft\Edge\User Data\Default\Cookies" >nul 2>&1
rd /s /q "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache" >nul 2>&1

:: 5. LIMPEZA DO MOZILLA FIREFOX
echo [+] Limpando Cookies e Cache do Firefox...
:: Limpa o Cache (Fica na pasta Local)
del /s /f /q "%LocalAppData%\Mozilla\Firefox\Profiles\*\cache2\*.*" >nul 2>&1
:: Limpa os Cookies (Fica na pasta Roaming)
del /s /f /q "%AppData%\Mozilla\Firefox\Profiles\*\cookies.sqlite" >nul 2>&1

:: 6. REFRESH DE REDE
echo [+] Flush DNS...
ipconfig /flushdns >nul

echo ======================================================
echo   LIMPEZA CONCLUIDA! 
echo   O Historico de Navegacao continua intacto.
echo ======================================================
timeout /t 5
