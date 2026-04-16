# 🛠️ Windows Multi-Browser Cleanup Tool

Este projeto consiste num sistema de automação para manutenção preventiva do Windows e limpeza profunda de navegadores (Chrome, Edge e Firefox). Foi desenvolvido para resolver problemas de performance em ambientes de atendimento (ISPs) onde sistemas terceirizados geram grande volume de cache e cookies, causando lentidão no sistema operativo.

## 🚀 Problema Resolvido
Em máquinas de suporte e atendimento, o acumular de ficheiros temporários nas pastas `%temp%`, `Prefetch` e o cache de navegadores frequentemente ultrapassa centenas de MBs, causando "freezes" no sistema. Esta ferramenta automatiza a limpeza diária sem comprometer o histórico de navegação ou senhas guardadas dos utilizadores.

## 🛠️ Tecnologias Utilizadas
* **Batch Script (.bat):** Core da automação para manipulação de ficheiros de sistema e encerramento de processos.
* **VBScript (.vbs):** Utilizado como "wrapper" para executar a limpeza em background (modo silencioso/invisível).
* **Windows Registry:** Implementação de persistência para execução prioritária no arranque do sistema.

## 📋 Funcionalidades
- [x] **Limpeza de Sistema:** Esvazia as pastas `%TEMP%`, `C:\Windows\Temp` e `Prefetch`.
- [x] **Limpeza Seletiva de Navegadores:** Remove Cookies e Cache do Google Chrome, Microsoft Edge e Mozilla Firefox.
- [x] **Preservação de Dados:** Mantém intactos o Histórico de Navegação e as Senhas Guardadas.
- [x] **Otimização de Rede:** Executa `ipconfig /flushdns` para garantir a resolução de nomes nos sistemas web.
- [x] **Execução Invisível:** Através do lançador VBS, a limpeza ocorre sem interromper o fluxo de trabalho do utilizador.

## 📂 Estrutura do Projeto
- `limpeza_automatica.bat`: O script principal com os comandos de limpeza.
- `lancador_invisivel.vbs`: Script para execução oculta do CMD.
- `README.md`: Documentação do projeto.

## 🔧 Como Implementar
1. Coloque os ficheiros numa pasta segura (ex: `C:\Scripts\`).
2. Configure o caminho do `.bat` dentro do ficheiro `.vbs`.
3. Para execução automática no arranque:
   - Abra o `regedit`.
   - Navegue até `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run`.
   - Crie um "Valor da Cadeia de Caracteres" apontando para o ficheiro `.vbs`.

## 👤 Autor
Desenvolvido por **[Tosaid]** como parte do portfólio de automação e suporte de infraestrutura de TI.
