cask "neovim-nightly" do
  version "nightly"
  #sha256

  arch arm: "arm64", intel: "x86_64"
  url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-#{arch}.tar.gz",
      verified: "github.com/neovim/"
  name "Neovim"
  desc "Vim-fork focused on extensibility and usability"
  homepage "https://neovim.io"

  #livecheck

  #depends_on

  binary "nvim-macos-#{arch}/bin/nvim"

  #zap
end
