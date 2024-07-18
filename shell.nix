let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    mitmproxy
    ffuf
    katana
    nuclei
    httpx
    subfinder
    bruno
    sqlmap        
  ];
}
