cask "aws-loggy" do
  version "3.12.2"

  on_arm do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-arm64.dmg"
    sha256 "1cfc917e6871bfe76cdce094453183e21de15fa8e8534bf64929fdb1d03388dc"
  end
  on_intel do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-x86_64.dmg"
    sha256 "1206dc9c81a5b3d83bbfb3f82697b6dec2bfb813011f735fec061fcecfb7cea3"
  end

  name "Loggy"
  desc "A fast, native desktop app for browsing and tailing AWS CloudWatch logs"
  homepage "https://github.com/aegixx/aws-loggy"

  app "Loggy.app"

  zap trash: [
    "~/Library/Application Support/dev.steampunk.aws-loggy",
    "~/Library/Caches/dev.steampunk.aws-loggy",
    "~/Library/Preferences/dev.steampunk.aws-loggy.plist",
  ]
end
