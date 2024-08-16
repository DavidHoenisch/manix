{ pkgs, ... }: {
  # Don't change this when you change package input. Leave it alone.
  home.stateVersion = "24.05";
  # specify my home-manager configs
  home.packages = with pkgs; [
    act
    age
    alacritty
    amber-lang
    atuin
    bat
    btop
    cobra-cli
    container-structure-test
    curl
    devpod
    docker
    fd
    ffmpeg
    flyctl
    fx
    gh
    go
    go-task
    gomarkdoc
    gotools
    grpcurl
    hoard
    jitsi-meet-electron
    k9s
    kind
    kitty
    ko
    kompose
    kubernetes-helm
    less
    linode-cli
    neovim
    nodejs
    ollama
    pandoc
    pet
    podman
    poetry
    portal
    pyenv
    python3
    python312Packages.pip
    ripgrep
    ripgrep
    serpl
    skaffold
    skim
    sops
    syft
    telegram-desktop
    termshark
    tmux
    watchexec
    xsv
    yazi
    yq
    zoxide
#    podman-desktop
  ];
  home.sessionVariables = {
    PAGER = "less";
    CLICLOLOR = 1;
    EDITOR = "nvim";
  };
  programs.bat.enable = true;
  programs.bat.config.theme = "TwoDark";
  programs.fzf.enable = true;
  programs.fzf.enableZshIntegration = true;
  programs.exa.enable = true;
  programs.git ={
	enable = true;
	userEmail = "dh1689@pm.me";
	userName = "DavidHoenisch";
  };
  programs.zsh.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.enableAutosuggestions = true;
  programs.zsh.enableSyntaxHighlighting = true;
  programs.zsh.shellAliases = {
    ls = "ls --color=auto -F";
    nixswitch = "darwin-rebuild switch --flake ~/src/manix/.#";
    nixup = "pushd ~/src/system-config; nix flake update; nixswitch; popd";
  };
  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;
  programs.alacritty = {
    enable = true;
    settings.font.normal.family = "MesloLGS Nerd Font Mono";
    settings.font.size = 16;
  };
  # home.file.".inputrc".source = ./dotfiles/inputrc;
}
