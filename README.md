# **Virgo ♍︎ - A Vim Plugin for Rust Crate Management**  

**Virgo** (Vi~~m~~ & ~~Ca~~rgo) is a Vim plugin designed to simplify Rust crate management directly from your editor. Search for crates, add dependencies, and clean up your `Cargo.toml` without ever leaving Vim! 

Virgo is currently in pre-release alpha, so you may encounter some bugs or unexpected behavior as we refine its features.

## 🔥 Features  
✅ **Crate Management** - Search, add, and remove Rust crates effortlessly.  
✅ **Seamless Vim Integration** - Works smoothly as a Vim plugin using `:virgo` commands.  
✅ **Lightning Fast** - Powered by Rust for performance and efficiency.  
✅ **Zero Setup** - No need to manually edit `Cargo.toml`, Virgo handles it for you.  

## 🚀 Installation  

### **With vim-plug**  
Add this to your Vim configuration (`~/.vimrc` or `~/.config/nvim/init.vim`):  
```vim
Plug 'dntstck/virgo'
```
Then run:  
```vim
:PlugInstall
```

### **With Vundle**  
Add this to your `.vimrc`:  
```vim
Plugin 'dntstck/virgo'
```
Then install it with:  
```vim
:PluginInstall
```

### **With Pathogen**  
Clone the repo into your Vim bundle directory:  
```sh
git clone https://github.com/your-username/virgo-vim ~/.vim/bundle/virgo-vim
```

## 🛠️ Usage  

### **Basic Commands**  
Run Virgo commands inside Vim:  
```vim
:virgo search colored  " Search for a crate
:virgo add serde       " Add a crate to dependencies
:virgo remove clap     " Remove a crate from dependencies
:virgo update serde    " Update a crate to the latest version
:virgo rollback serde  " Rollback a crate
:virgo stats serde     " Shows crate statistics
:virgo compare serde 1.0.211 1.0.219 " Compare crate versions
:virgo list serde      " Lists dependencies required for a crate
```
## 🛠️ Troubleshooting

Permission denied: 
```bash
chmod +x .vim/bundle/virgo/bin/virgo 
```

### **Advanced Features (Planned)**  
🔹 `:virgo update <crate>` - Update dependencies automatically  
🔹 `:virgo config` - Allow customization of plugin behavior  
🔹 Search filters (`--latest`, `--popular`) for refined results  

