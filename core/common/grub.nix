{config, pkgs, ...}: {
    boot.loader = { 
    efi.canTouchEfiVariables = true; 
    grub = {
      enable = true;  
      device = "nodev";
      efiSupport = true;  
      useOSProber = true;

      theme = pkgs.stdenv.mkDerivation {
        pname = "distro-grub-themes";
        version = "3.1";
          src = pkgs.fetchFromGitHub {
          owner = "AdisonCavani";
          repo = "distro-grub-themes";
          rev = "v3.1";
          hash = "sha256-ZcoGbbOMDDwjLhsvs77C7G7vINQnprdfI37a9ccrmPs=";
          };
          installPhase = "cp -r customize/nixos $out";
        };
    };
  };
}