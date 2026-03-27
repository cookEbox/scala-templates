{
  description = "Scala 2 flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = [
          pkgs.metals
          pkgs.ammonite
          pkgs.bloop
          pkgs.coursier
          pkgs.jdk
          pkgs.mill
          pkgs.sbt
          pkgs.scala-cli
          pkgs.scalafmt
        ];
        shellHook = ''
          export DIRENV_LOG_FORMAT=
        '';
      };
    });
}
