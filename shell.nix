{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz") {} }:

pkgs.mkShell {
  name = "default";
  packages = with pkgs; [
    zsh
    oh-my-zsh
    neovim
    htop

    python3
    pyright

    (python3.withPackages (ps: [
      ps.pynvim
    ]))

    file
    git
    curl
    jq
  ];

  shellHook = ''
    zsh
    exit
  '';
}
