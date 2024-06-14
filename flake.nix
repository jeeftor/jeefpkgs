{
  description = "Overlay for custom NixOS configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      overlay = import ./overlay.nix;
    in {
      overlays.default = overlay;

      # Provide the overlay as a package
      packages.x86_64-linux = nixpkgs.lib.mkShell {
        inherit overlay;
      };
    };
}
