# nix/modules/home-manager.nix — auto-generated from quote.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.quote; in {
  options.programs.quote = {
    enable = lib.mkEnableOption "quote";
    package = lib.mkOption { type = lib.types.package; default = pkgs.quote or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
