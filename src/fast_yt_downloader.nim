import parser
import dotenv
import std/os
import std/osproc
load()

let 
  file=getEnv("URL_FILE")

var 
  urls: seq[string]

proc downloader(url:string) =
  echo url
  discard execProcess(
    "yt-dlp -f bestaudio -x --audio-format mp3 " & url, options = {poEvalCommand}
  )


# Urls listaveis por indice
urls = parserTextFile(file)

for url in urls:
  downloader(url)