# ⚡ Fast YT Downloader

O **Fast YT Downloader** é um CLI criado para baixar vídeos e áudios do YouTube de forma eficiente e multiprocedural. A proposta do projeto é oferecer uma alternativa mais leve e rápida em comparação com soluções tradicionais baseadas em linguagens interpretadas, ja que a execução do projeto se resume a um binario de Nim.

---

## ⚙️ Como funciona

O fluxo básico da aplicação é:

1. O usuário fornece uma URL do YouTube através do arquivo urls.txt
2. O programa processa as URLs
3. Realiza o download multiprocedural do conteúdo utilizando ferramentas apropriadas como `yt-dlp`
4. Salva o arquivo localmente no formato desejado

---

## Dependências

Antes de rodar o projeto, certifique-se de ter instalado:

- [Nim](https://nim-lang.org/)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)

---

## Como rodar

Clone o projeto
```bash
git clone https://github.com/GuilhermeeDev/fast-yt-downloader.git && cd fast-yt-downloader
```

Build projeto com `Nimble`
```bash
nimble build
```