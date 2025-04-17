# To learn more about how to use Nix to configure your environment
# see: https://firebase.google.com/docs/studio/customize-workspace
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "unstable"; # use the unstable channel for rolling updates

  # Use https://search.nixos.org/packages to find packages
  packages = with pkgs; [
    # the base setup
    python312Full
    pipenv

    # github + gitlab CLI
    glab
    gh

    # https://squidfunk.github.io/mkdocs-material/plugins/requirements/image-processing/#dependencies
    cairo
    freetype
    libffi
    libjpeg
    libpng
    zlib
    pngquant
  ];

  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    # If the extension in question is only available via VS Marketplace, get the vsix file of it
    # and upload as user extension instead of adding here (it'll don't work like in Gitpod).
    extensions = [
      "DavidAnson.vscode-markdownlint"
      "redhat.vscode-yaml"
      "GitLab.gitlab-workflow"
      "vivaxy.vscode-conventional-commits"
      "eamodio.gitlens"
    ];

    # Enable previews for Mkdocs projects
    previews = {
      enable = true;
      previews = {
        web = {
          command = [
            "pipenv" 
            "run"
            "dev"
            "-a"
            "0.0.0.0:$PORT"];
          manager = "web";
          env = {
            # Environment variables to set for your server
            PORT = "$PORT";
          };
        };
      };
    };

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        pipenv-install = "pipenv install";
      };
      # Runs when the workspace is (re)started
      onStart = {};
    };
  };
}
