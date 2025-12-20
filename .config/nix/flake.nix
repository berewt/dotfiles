# global `nix flake`
# Install with `nix profile add ~/.config/nix`
# It's a mess at the moment, as it contains way too many things
{
  description= "My flake environment";

  inputs = {
    flake-utils.url = github:numtide/flake-utils;
    cardano-node.url = github:IntersectMBO/cardano-node;
    idris2-lsp.url = github:idris-community/idris2-lsp;
    unison.url = github:ceedubs/unison-nix;
    };

  outputs = { self, nixpkgs, flake-utils, cardano-node, idris2-lsp, unison }:
    let
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      packages.${system}.default = pkgs.buildEnv {
        name = "my-profile";
        paths = with pkgs; [
          btop
          delta
          direnv
          docker
          duf
          entr
          fd
          fzf
          ghostscript
          github-cli
          gnupg
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
          scriv
          tldr
          tmux
          typst
          yarn
        ]
        ++ [
          cardano-node.packages.${system}.default
          idris2-lsp.packages.${system}.default
          unison.packages.${system}.default
        ];
      };
    };
}
