{ pkgs, ... }: {
  # Don't change this when you change package input. Leave it alone.
  home.stateVersion = "24.05";
  # specify my home-manager configs
  home.packages = with pkgs; [
    act
    age
    alacritty
    amber-lang
    atac
    atuin
    bat
    btop
    caddy
    chezmoi
    cobra-cli
    colima
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
    kubectl
    kubernetes-helm
    less
    linode-cli
    minikube
    neovim
    nodejs
    nushell
    ollama
    pandoc
    pet
    podman
    poetry
    portal
    protobuf_26
    pyenv
    python3
    python312Packages.pip
    ripgrep
    rm-improved
    rustup
    serpl
    skaffold
    skim
    sops
    supabase-cli
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
  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;
  programs.alacritty = {
    enable = true;
    settings.font.normal.family = "MesloLGS Nerd Font Mono";
    settings.font.size = 16;
  };
  #home.file.".inputrc".source = ./dotfiles/inputrc;
}
