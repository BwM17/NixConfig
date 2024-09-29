{config, pkgs, ...}: 
{
  imports = [
    ./zsh.nix
    ./tmux.nix 
    ./nix.nix 
    ./nixos.nix
    #./grub.nix 
    ./networking.nix
  ]; 

   environment.systemPackages = with pkgs; [
    neovim 
    git
  ];
}
