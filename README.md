# kotlinr

A simple ZSH function to run your kotlin scripts from the CLI without hassle

## Installation
Run the following commands in your terminal

```
curl -o ~/.kotlinr.zsh https://raw.githubusercontent.com/ManasMalla/kotlinr/refs/heads/main/kotlinr.sh

echo 'source ~/.kotlinr.zsh' >> ~/.zshrc

source ~/.zshrc
```
## Usage

```kotlinr <filename>.kt```

#### Specify a custom output

``` kotlinr <filename>.kt <output_filename>.jar```
#### Keep the output jar file

``` kotlinr <filename>.kt --keep```
