cask "aws-loggy" do
  version "3.12.0"

  on_arm do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-arm64.dmg"
    sha256 "11241ef9423f0e750d7e729a7c9d3b202e77c4b2ef1e17f8b61e1e9789edc1bc"
  end
  on_intel do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-x86_64.dmg"
    sha256 "9189c9a83b75addb746d0a1b90ad17548043da3ce5854f0811e0626ee522fafe"
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
