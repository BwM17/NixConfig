{config, pkgs, ... }: {

 
    virtualisation.oci-containers = {
      backend = "docker"; 
        containers = {
          portainer = {
          autoStart = true; 
          image = "portainer/portainer-ce";  
          ports = ["9443:9443"]; 
          volumes = [
            "portainer_data:/data" 
            "/var/run/docker.sock:/var/run/docker.sock"
            "/etc/localtime:/etc/localtime"
          ];     
          extraOptions = [
            "--pull=always"
            "--restart=unless-stopped"
            "--rm=false"
          ];
        };
      }; 
    };
  } 