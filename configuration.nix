{ config, pkgs, ... }: 
let  
  username = "redlotus";  
  hostname = "nixbox";  
in {
  imports = [ 
      ./users/default.nix  
      ./core/default.nix 
      ./services/default.nix 
      ./hosts/mainbox/default.nix 
    ];


  services.xserver = {  
    enable = true;  

    xkb = {  
    layout = "de"; 
    variant = "";
  };  

    displayManager.gdm.enable = true;
    windowManager.i3.enable = true; 
  };

  users.users.${username} = { 
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "docker"];  

    #get unfree software to work with home manager
    packages = with pkgs; [
      spotify 
      vscode
    ];
  };  

  networking.hostName = "${hostname}";    


  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
