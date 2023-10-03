{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz") {} }:

let
  home = builtins.getEnv "HOME";
  currentDir = builtins.toString ./. ;
in
pkgs.mkShell {
  name = "default-nix";

  # ZDOTDIR = "${home}/.config/default-nix/zsh/";
  ZDOTDIR = "${currentDir}/config/zsh";
  ## Variable is not used anymore
  # MYVIMRC = "${currentDir}/config/nvim/init.vim";
  XDG_CONFIG_HOME = "${currentDir}/config";
  ZSH = "${currentDir}/config/zsh/oh-my-zsh";
  NVIM_PACKPATH = "${currentDir}/config/nvim/plugged/";
  PAGER = "most";

  packages = with pkgs; [
    zsh
    oh-my-zsh
    starship

    neovim

    statix

    python3
    pyright

    (python3.withPackages (ps: [
      ps.pynvim
    ]))

    fd
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
