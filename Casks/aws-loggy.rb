cask "aws-loggy" do
  version "3.9.2"

  on_arm do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-arm64.dmg"
    sha256 "2f5a74a6903d778e2e7c6e2e3e3cb2fcfd8ec258700d1425d269f0700e8b8ae9"
  end
  on_intel do
    url "https://github.com/aegixx/aws-loggy/releases/download/v#{version}/Loggy-#{version}-macos-x86_64.dmg"
    sha256 "8d6984a82e820d7fc7ff24a1571d575a83bb770468bbe6ab12d08447de7a8788"
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
