cask "aws-loggy" do
  version "3.15.0"

  on_arm do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-arm64.dmg"
    sha256 "2433bd28368c4624a90dd9d3b4fabd8e502725099323b03e03a2f1b45d0d5b1d"
  end
  on_intel do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-x86_64.dmg"
    sha256 "d3446d58f0ab7b80b498644b031195f8abe9ff3d2bc3f260a213b68302eb8c4b"
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
