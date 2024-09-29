{config, pkgs, ...}: 
{
  imports = [
    #./spotify.nix
    ./starship.nix
    ./vesktop.nix
    #./vscode.nix
  ];
}