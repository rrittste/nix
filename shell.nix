{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz") {} }:

let
  home = builtins.getEnv "HOME";
in
pkgs.mkShell {
  name = "default-nix";

  ZDOTDIR = "${home}/.config/default-nix/zsh/";
  PAGER = "most";

  packages = with pkgs; [
    zsh
    oh-my-zsh

    neovim

    python3
    pyright

    (python3.withPackages (ps: [
      ps.pynvim
    ]))

    most
    man
    htop
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
