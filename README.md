# Install packages

```sh
# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# nvm
brew install nvm
echo "export NVM_DIR=\"$HOME/.nvm\"" >> ~/.zshrc
echo "  [ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\"" >> ~/.zshrc
echo "  [ -s \"$NVM_DIR/bash_completion\" ] && \. \"$NVM_DIR/bash_completion\"" >> ~/.zshrc
source ~/.zshrc
```

# Set node version

**&lt;project&gt;/.nvmrc**

```
v18.12.1
```

**&lt;project&gt;/.npmrc**

```
engine-strict=true
```

**&lt;project&gt;/.yarnrc**

```
--install.ignore-engines false
```

**&lt;project&gt;/package.json**

```json
{
	...

	"engines": {
		"node": "v18.12.1",
		"npm": "8.19.2"
	}
}
```

# Before starting a project

```sh
nvm install 18.12.1
nvm use
```
