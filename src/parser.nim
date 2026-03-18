import std/re

var
    urls: seq[string]

let
    # Verifica a url utilizando regex
    youtubeRegex = re"^https:\/\/www\.youtube\.com.*$"

proc isValidUrl(url: string): bool =
    # Função que verifica se o regex esta contido na url
    return url.match(youtubeRegex)

proc parserTextFile*(file: string): seq[string] =
    for l in lines(file):

        if isValidUrl(l):
            urls.add(l)
        
        else:
            echo "[LOG] Url inválida: ",l
    
    return urls