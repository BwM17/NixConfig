{config, pkgs, ...}:  
{
    nixpkgs.config.allowUnfree = true; 
  nixpkgs.config.allowUnfreePredicate = _: true;
  system.stateVersion = "24.05"; 
}