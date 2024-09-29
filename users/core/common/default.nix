{config, pkgs, ...}: 
{
  imports = [
    ./brave.nix
    ./fonts.nix 
    ./kitty.nix
  ]; 
}