import parser
import dotenv
import std/os
import std/osproc
load()

let 
    file=getEnv("URL_FILE")

var 
    urls: seq[string]
    i: int

proc downloader(url:string) =
  discard execProcess(
    "yt-dlp",
    args = ["-f", "bestaudio", "-x", "--audio-format", "mp3", url]
  )


# Urls listaveis por indice
urls = parserTextFile(file)
i=0
for i in urls.len:
    downloader(urls[i])