# Corrigindo dependencias do ASDF para o nim
# sudo apt install libpcre3 libpcre3-dev -y

# Instalando binario mais recente do yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /$HOME/fast-yt-downloader/local/yt-dlp-bin/yt-dlp
sudo chmod a+rx /$HOME/fast-yt-downloader/local/yt-dlp-bin/yt-dlp

cat > .env.example << EOF
OUTPUT_AUDIO="$HOME/fast-yt-downloader/local/audio"
OUTPUT_VIDEO="$HOME/fast-yt-downloader/local/video"
YT_DLP_DIR="$HOME/fast-yt-downloader/local/yt-dlp-bin"
EOF