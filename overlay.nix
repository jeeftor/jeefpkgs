self: super: {
  # Override the isoImage module
  isoImage = import ./nixos/modules/installer/cd-dvd/iso-image.nix { inherit (super) lib pkgs; };
}