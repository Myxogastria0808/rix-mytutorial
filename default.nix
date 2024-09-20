# This file was generated by the {rix} R package v0.11.0 on 2024-09-19
# with following call:
# >rix(r_ver = "658e7223191d2598641d50ee4e898126768fe847",
#  > r_pkgs = c("dplyr",
#  > "ggplot2"),
#  > system_pkgs = NULL,
#  > git_pkgs = NULL,
#  > ide = "code",
#  > project_path = "~/Desktop/rix-mytutorial/",
#  > overwrite = TRUE,
#  > print = TRUE,
#  > shell_hook = NULL)
# It uses nixpkgs' revision 658e7223191d2598641d50ee4e898126768fe847 for reproducibility purposes
# which will install R version latest.
# Report any issues to https://github.com/ropensci/rix
let
 pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/658e7223191d2598641d50ee4e898126768fe847.tar.gz") {};
 
  rpkgs = builtins.attrValues {
    inherit (pkgs.rPackages) 
      dplyr
      ggplot2
      languageserver;
  };
    
  system_packages = builtins.attrValues {
    inherit (pkgs) 
      glibcLocales
      nix
      R;
  };
  
in

pkgs.mkShell {
  LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux" then "${pkgs.glibcLocales}/lib/locale/locale-archive" else "";
  LANG = "en_US.UTF-8";
   LC_ALL = "en_US.UTF-8";
   LC_TIME = "en_US.UTF-8";
   LC_MONETARY = "en_US.UTF-8";
   LC_PAPER = "en_US.UTF-8";
   LC_MEASUREMENT = "en_US.UTF-8";

  buildInputs = [  rpkgs  system_packages   ];
  
}
