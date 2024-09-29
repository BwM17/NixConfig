{config, pkgs, osConfig, ...}:  
{
  home.file."./.config/eww/i3/eww.scss" = {  
    source = ./eww/eww.scss;
    recursive = false; 
  };  

  home.file."./.config/eww/i3/eww.yuck" = { 
    source = ./eww/eww.yuck;
    recursive = false; 
  }; 

  home.file."./.config/eww/i3/modules" = {  
    source = ./eww/modules;
    recursive = true; 
  }; 

  home.file."./.config/eww/i3/styles" = {  
    source = ./eww/styles;
    recursive = true; 
  }; 

  home.file."./.config/eww/i3/img" = { 
    source = ./eww/img; 
    recursive = true;
  };

  home.file."./.config/eww/i3/scripts" = {   
    source = ./eww/scripts; 
    recursive = true;  
    executable = true;
  }; 
}