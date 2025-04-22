# **Virgo ♍︎ - A Vim Plugin for Rust Crate Management 🦀**  

**Virgo** (Vi~~m~~ & ~~Ca~~rgo) is a **powerful Vim plugin** designed to simplify **Rust crate management** directly from your editor. Search for crates, add dependencies, and clean up your `Cargo.toml` without ever leaving Vim!  

🚀 **Now officially released as v1.0!** Virgo streamlines crate management with a **lightning-fast, seamless integration**, making Rust development **more efficient than ever**.  

## 🔥 Features  
✅ **Crate Management** – Easily search, add, remove, and update Rust crates.  
✅ **Seamless Vim Integration** – Execute commands effortlessly within Vim using `:virgo` shortcuts.  
✅ **Optimized Performance** – Built in **Rust** for maximum speed and efficiency.  
✅ **Zero Manual Edits** – No need to modify `Cargo.toml`; Virgo **handles dependencies for you**.  
✅ **Rollback Protection** – Revert changes with a single command, **ensuring safer updates**.  
✅ **Dependency Insights** – Compare versions, check outdated crates, and track package stats.  

## 🛠️ Getting Started  

### **Basic Commands**  
Run Virgo commands inside Vim:  
```vim
:virgo search <crate>      " Search for a crate
:virgo add <crate>         " Add a crate to dependencies
:virgo remove <crate>      " Remove a crate from dependencies
:virgo update <crate>      " Update a crate to the latest version
:virgo rollback <crate>    " Rollback a crate
:virgo stats <crate>       " Shows crate statistics
:virgo compare <crate>     " Compares Latest Vs. Stable
:virgo versions <crate>    " Lists versions available for a crate
:virgo installed           " Displays currently installed crates
:virgo available           " Lists available crates
:virgo all                 " Lists all crates
:virgo outdated            " Identifies which dependencies need an update
```

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

## 🛠️ Troubleshooting  

### **Permission Denied**  
If you encounter permission issues, run:  
```bash
chmod +x ~/.vim/bundle/virgo/bin/virgo 
```
