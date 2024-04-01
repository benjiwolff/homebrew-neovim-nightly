cask "neovim-nightly" do
  version "nightly"

  arch arm: "arm64", intel: "x86_64"
  url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-#{arch}.tar.gz",
      verified: "github.com/neovim/"
  name "Neovim"
  desc "Vim-fork focused on extensibility and usability"
  homepage "https://neovim.io"

  conflicts_with formula: "neovim"

  bin_path = "nvim-macos-#{arch}/bin/nvim"
  binary bin_path

  postflight do
    system_command "xattr", args: ["-c", "#{staged_path}/#{bin_path}"]
  end
end
