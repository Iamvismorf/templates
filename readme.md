### Usage 
```
Create alias to ~/mytemplates:
    nix registry add biscuits ~/mytemplates

Show registries:
    nix registry list

Init:
    nix flake init -t biscuits#desiredTemplate
    nix flake init -t url#desiredTemplate
        example url: github:nixos/templates
```
