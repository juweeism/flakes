{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem ( system:
    let 
        pkgs = import nixpkgs { inherit system; };

        python = pkgs.python310;
	in {
        devShells = {
            default = pkgs.mkShell {
                name = "jupyter";

                buildInputs = with python; [
                    jupyter
                    jax
                    pandas
                ];
	        };
        };
    });
}
