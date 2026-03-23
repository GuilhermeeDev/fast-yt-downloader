# Corrigindo dependencias do ASDF para o nim
sudo apt install libpcre3 libpcre3-dev -y

# Instalando versão mais recente do yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

# Adicionando yt-dlp ao $PATH
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc

cat > .env << EOF
# Arquivo com as URLs de audio
URL_FILE="$HOME/fast-yt-downloader/urls.txt"
EOF