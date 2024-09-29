{ config, libs, pkgs, ... } : {
 programs.zsh = {  

  enable = true;  

  shellAliases = {
   ls="lsd -l"; 
  };   

  #histSize = 10000;
  #histFile = "${config.xdg.dataHome}/zsh/history";  
 
  syntaxHighlighting.enable = true;
  autosuggestions.enable = true; 


  ohMyZsh = { 
   enable = true; 
   plugins = [ 
    "git"  
   ];
  }; 
 };
}
