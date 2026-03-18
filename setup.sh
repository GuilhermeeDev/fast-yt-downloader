# Corrigindo dependencias do ASDF
sudo apt install libpcre3 libpcre3-dev -y
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

# Corrigindo error de yt-dlp atual v2026+
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc

cat > .env << EOF
# Arquivo com as URLs de audio
URL_FILE="$HOME/fast-yt-downloader/urls.txt"
EOF