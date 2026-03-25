cask "goxkey" do
  version "0.3.0"
  sha256 "e747009b9c78d2ea3d72ed5419c24090553cbc1c7095dc63145de89467c7649e"

  url "https://github.com/huytd/goxkey/releases/download/v#{version}/GoKey-v#{version}.zip"
  name "Gõkey"
  name "GoKey"
  desc "Vietnamese input method editor"
  homepage "https://github.com/huytd/goxkey"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "GoKey.app"

  zap trash: "~/.goxkey"
end
