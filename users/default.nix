{ config, pkgs, lib, ... }:   
let  
  username = "redlotus";
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz";
in
{ 
  imports = [  
    (import "${home-manager}/nixos")  
  ];

  home-manager.users.redlotus = {
  home.stateVersion = "24.05";   
  home.homeDirectory = "/home/${username}";       

    imports = [ 
      ./graphical/default.nix   
      ./core/common/default.nix   
      ./core/extra/default.nix
    ]; 
  };
}