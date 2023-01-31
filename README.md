# project-gen
project generator

This repo uses `aloha cli` to generate scaffold projects.

aloha => https://github.com/BMilliet/aloha

Example:
```bash
aloha generate xcode-uikit-full ExampleProj
```

## using docker
```bash
# build a image with aloha
docker build -t proj_gen:1.0 .

# run the contaier passing the command parameters
docker run --rm -v "$PWD":/home/user/app proj_gen:1.0 aloha generate xcode-uikit-full ExampleProj
```
