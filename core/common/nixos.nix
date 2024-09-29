{config, pkgs, ...}: 
let 
  layout = "de"; 
  timezone = "Europe/Berlin";
  locale = "de_DE.UTF-8"; 

in {
  i18n.defaultLocale = "${locale}"; 

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "${locale}";
    LC_IDENTIFICATION = "${locale}"; 
    LC_MEASUREMENT = "${locale}";
    LC_MONETARY = "${locale}";
    LC_NAME = "${locale}";
    LC_NUMERIC = "${locale}";
    LC_PAPER = "${locale}";
    LC_TELEPHONE = "${locale}"; 
    LC_TIME = "${locale}";
  }; 

  time.timeZone = "${timezone}"; 

  console.keyMap = "${layout}";  
   console = { 
    earlySetup = true;
    font="${pkgs.terminus_font}/share/consolefonts/ter-132b.psf.gz";  
    packages = with pkgs; [ terminus_font ];
  };

}