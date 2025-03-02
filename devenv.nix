{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    gitFull
    pipenv

    # required for social cards
    cairo
    freetype
    libffi
    libjpeg
    libpng
    zlib
    pngquant
  ];

  # https://devenv.sh/languages/
  # languages.rust.enable = true;
  languages.python = {
    enable = true;
    package = pkgs.python313;
  };

  enterShell = ''
    pipenv install
  '';

  # https://devenv.sh/tasks/
  tasks = {
     "docs:dev".exec = "pipenv run dev";
     "docs:build".exec = "pipenv run build";
  };
}
