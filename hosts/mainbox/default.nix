{config, pkgs, ...}: 
{
  imports = [
   ./hardware-configuration.nix
  ]; 

  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
}