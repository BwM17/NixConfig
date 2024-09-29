{ lib, pkgs, osConfig, ...}: 
{   
  imports = [
    ./rofi.nix 
    ./eww.nix
  ]; 


  home.packages = with pkgs; [ 
    nitrogen 
    arandr 
    eww
  ];

  home.file."./.config/i3" = {      
    source = ./config;  
    recursive = true;
  };   
}