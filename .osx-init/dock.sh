
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
add_app "/Applications/Vivaldi.app"
add_app "/Applications/Safari.app"
add_app "/Applications/Mail.app"
add_app "/Applications/Slack.app"
add_app "/Applications/Atom.app"
add_app "/Applications/Visual Studio Code.app"
add_app "/Applications/Sequel Pro.app"
add_app "/Applications/Messages.app"
add_app "/Applications/System Preferences.app"
add_app "/Applications/GitHub Desktop.app"

killall Dock
