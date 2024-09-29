{config, pkgs, ...}: {
  services.xserver = {  
    enable = true;  

    xkb = {  
    layout = "de"; 
    variant = "";
  };  

    displayManager.gdm.enable = true;
    windowManager.i3.enable = true; 
  };

}