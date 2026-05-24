# nix/modules/nixos.nix — auto-generated from quote.caixa.lisp
# description: "Quasi-quoting macro quote!(...)"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.quote;
in {
  options.services.quote = {
    enable = lib.mkEnableOption "quote";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.quote or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
