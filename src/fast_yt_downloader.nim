import dotenv
import ui/tui_functions
load()

let outputAudio = getEnv("OUTPUT_AUDIO")
let outputVideo = getEnv("OUTPUT_VIDEO")
let ytDlpDir = getEnv("YT_DLP_DIR")

proc main() =
  startTUI(outputAudio, outputVideo, ytDlpDir)

main()