# global `nix flake`
# Install with `nix profile add ~/.config/nix`
# It's a mess at the moment, as it contains way too many things
{
  description = "My flake environment";

  inputs = {
    cardano-node.url = "github:IntersectMBO/cardano-node";
    idris2-lsp.url = "github:idris-community/idris2-lsp";
    unison.url = "github:ceedubs/unison-nix";
  };

  outputs =
    {
      self,
      nixpkgs,
      cardano-node,
      idris2-lsp,
      unison,
    }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs {
        system = system;
        config = {
          allowUnfree = true;
          allowUnfreePredicate = _: true;
        };
      };
    in
    {
      packages.${system}.default = pkgs.buildEnv {
        name = "my-profile";
        paths =
          with pkgs;
          [
            btop
            claude-code
            delta
            direnv
            docker
            duf
            entr
            just
            fd
            fzf
            ghostscript
            gemini-cli
            git
            github-copilot-cli
            github-cli
            gnupg
            idris2
            imagemagick
            iterm2
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
            nixfmt
            openssl
            opencode
            pandoc
            pay-respects
            pnpm
            protobuf
            ripgrep
            tectonic
            scriv
            spec-kit
            iterm2
            tldr
            typst
            yarn
            zellij
          ]
          ++ [
            cardano-node.packages.${system}.default
            idris2-lsp.packages.${system}.default
            unison.packages.${system}.default
          ];
      };
    };
}
