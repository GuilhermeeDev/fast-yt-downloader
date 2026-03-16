# Corrigindo dependencias do ASDF
sudo apt install libpcre3 libpcre3-dev yt-dlp -y

cat > .env << EOF
# Arquivo com as URLs de audio
URL_FILE="$HOME/fast-yt-downloader/urls.txt"
EOF