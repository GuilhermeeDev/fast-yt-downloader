# Package

version       = "1.0.0"
author        = "GuilhermeeDev"
description   = "Downloader de videos/audios do youtube usando binario de Nim."
license       = "MIT"
srcDir        = "src"
bin           = @["fast_yt_downloader"]

# Dependencies

requires "nim >= 2.2.8"
requires "dotenv >= 2.0.0"
requires "illwill >= 0.1.0"