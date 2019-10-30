
add_app() {
defaults write com.apple.dock persistent-apps -array-add "
<dict>
  <key>tile-data</key>
  <dict>
    <key>file-data</key>
    <dict>
      <key>_CFURLString</key>
      <string>${1}</string>
      <key>_CFURLStringType</key>
      <integer>0</integer>
    </dict>
  </dict>
</dict>"
}

defaults write com.apple.dock persistent-apps -array

add_app "/Applications/iTerm.app"
add_app "/Applications/Google Chrome.app"
add_app "/Applications/Slack.app"
add_app "/Applications/GitHub Desktop.app"
add_app "/Applications/Spark.app"
killall Dock
