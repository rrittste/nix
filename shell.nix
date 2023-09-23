{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz") {} }:

pkgs.mkShell {
  name = "default";
  packages = [
    pkgs.zsh
    pkgs.neovim
    pkgs.htop

    pkgs.python3

    pkgs.git
    pkgs.curl
    pkgs.jq
  ];

  shellHook = ''
    zsh
    exit
  '';
} 
