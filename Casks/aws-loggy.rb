cask "aws-loggy" do
  version "3.15.2"

  on_arm do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-arm64.dmg"
    sha256 "e554c98996467767546f0faefa89ff62eb01187dd91bb89c05f88c74f402f0f6"
  end
  on_intel do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-x86_64.dmg"
    sha256 "d4e7f8d4beb487329fc64deb3bdbf013fa981050ee67ea2551a6f6c1ad21fbe0"
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
