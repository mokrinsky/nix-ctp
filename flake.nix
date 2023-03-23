{
  description = "Catppuccin palette flake";

  inputs.nixpkgs.url = "nixpkgs/nixpkgs-unstable";
  inputs = {
    ctp = {
      url = "https://github.com/catppuccin/palette";
      flake = false;
      type = "git";
      rev = "530db7cbcbee895a7c0ce65d06db003f25a2c57b";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ctp,
  }:
    builtins.fromJSON (builtins.readFile "${ctp}/palette.json");
}
