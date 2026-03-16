# Usage 
create alias to ~/mytemplates:
    nix registry add biscuits ~/mytemplates
show registries:
    nix registry list
init:
    nix flake init -t biscuits#desiredTemplate
