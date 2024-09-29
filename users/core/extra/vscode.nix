{config, pkgs, ...}: {
  programs.vscode = {
    enable = true; 

    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim 
      jnoortheen.nix-ide
      equinusocio.vsc-material-theme-icons 
      catppuccin.catppuccin-vsc
    ];
  };
}