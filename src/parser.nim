import std/re

var
    urls: seq[string]

let
    youtubeRegex = re"^https:\/\/www\.youtube\.com.*$"

proc isValidUrl(url: string): bool =
    return url.match(youtubeRegex)

proc parserTextFile*(file: string): seq[string] =
    for l in lines(file):
        # Verifica se a url esta contida no Regex de uma url do youtube
        if isValidUrl(l):
            urls.add(l)
        else:
            echo "[LOG] Url inválida: ",l
    return urls