{
  description= "My development environment";

  inputs = {
    flake-utils.url = github:numtide/flake-utils;
    cardano-node.url = github:IntersectMBO/cardano-node;
    idris2-lsp.url = github:idris-community/idris2-lsp;
    };

  outputs = { self, nixpkgs }:
    let
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      packages.${system}.default = pkgs.buildEnv {
        name = "my-profile";
        paths = with pkgs; [
          delta
          direnv
          duf
          entr
          fd
          fzf
          ghostscript
          github-cli
          gnupg
          htop
          idris2
          imagemagick
          jq
          kitty
          kubo
          lazygit
          lua
          lua-language-server
          luarocks
          marksman
          mermaid-cli
          neovim
          nodejs
          openssl
          pandoc
          pay-respects
          pnpm
          protobuf
          ripgrep
          tectonic
          tldr
          tmux
          typst
          yarn
        ]
        ++ [
          cardano-node.packages.${system}.default

        ];
      };
    };
}
