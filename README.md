# **Virgo ♍︎ - Autonomous Rust Crate Management for Vim 🦀**

**Virgo** (Vi~~m~~ & ~~Ca~~rgo) is a **powerful Vim plugin** designed to simplify **Rust crate management** directly from your editor. Search for crates, manage Cargo.toml, check dependencies,
 manage your lockfile, discover trending crates and explore stats—all without leaving Vim!  

🚀 **Currently at v1.3.0!** Virgo continues to evolve, incorporating bug fixes, usability enhancements, and polished features to redefine Rust development.  

---

## 🔥 Features  
✅ **Crate Management** – Search, add, remove, update, and rollback Rust crates effortlessly.<br>
✅ **Crate Info** – Discover documentation, stats, and detailed crate info directly in Vim.<br>
✅ **Seamless Integration** – Execute streamlined commands instantly using `:virgo`.<br>
✅ **Backup & Restore** – Secure your `Cargo.toml`, rollback safely, and prevent accidental changes.<br>
✅ **Visual Feedback** – Enhanced output formatting for structured readability and usability.<br> 
✅ **Dependency Insights** – Examine dependencies, visualize trees, track updates, and filter changelogs.<br>  
✅ **Breaking Change Detection** – Analyze `Cargo.toml` for breaking updates before they happen.<br>  
✅ **Rollback Protection** – Easily revert changes, maintain stability, and prevent unintended updates.<br>
✅ **Optimized Performance** – Built in **Rust** for blazing-fast execution and efficiency.<br>
✅ **Compare Versions** – Instantly compare bleeding-edge vs latest stable versions.<br>
✅ **Docs Lookup** – Fetch crate documentation and examples directly from **docs.rs**.<br>
✅ **Standalone Outdated Check** – Identify outdated dependencies **without relying on Cargo**.<br>
✅ **Complete Cargo.toml Management** – Health checks, edits, structured initialization, and validation.<br>

---

## 🚀 What's New in v1.3.0  

 **Auto-select latest stable** – `:virgo add <crate>` defaults to the latest stable version 
 **Extended `:virgo docs`** – Now grabs examples and usage snippets from docs.rs 
 **Added flags `:virgo docs -ext`** – open crate documentation directly in your browser using -ext
 **Standalone `outdated` command** – No longer relies on Cargo, making it more reliable  
 **Smarter `update_crate`** – Handles crates with `{ features: [...] }` properly  
 **Enhanced changelog filtering** – Supports major, minor, patch, and version-based filtering  

---

## 🛠️ Commands Overview  

### 🔍 Search & Information  

```vim
:virgo search    " Search for a crate on crates.io  
:virgo stats     " Display the stats of a crate  
:virgo info      " Displays detailed info of a crate  
:virgo versions  " Displays all available versions of a crate  
:virgo trending  " Displays trending crates  
```

### 🛠 Dependency Management  

```vim
:virgo add       " Adds selected crate  
:virgo remove    " Removes selected crate  
:virgo update    " Updates selected dependency  
:virgo rollback  " Rolls back to a previous version  
:virgo compare   " Compares bleeding-edge with latest stable version of a selected crate  
:virgo depends   " Displays all the dependencies of a selected crate  
```

### 📜 Project & Cargo.toml Handling 

```vim
:virgo all       " Displays all installed dependencies in Cargo.toml  
:virgo health    " Checks current Cargo.toml for overall health  
:virgo breaking  " Analyzes Cargo.toml for breaking changes  
:virgo lockfile  " Inspects Cargo.lock for precise version tracking  
:virgo changelog " View changelog for a selected crate (Filter by major, minor, patch, since x.x.x & more)  
:virgo tree      " Display a tree of dependencies for a crate  
:virgo init      " Creates a basic Cargo.toml in the current dir  
:virgo edit      " Edit Name, Version, and Edition in the current Cargo.toml   
```

### 🔄 Backup & Restore  

``` vim
:virgo backup    " Backup Cargo.toml  
:virgo restore   " Restore Cargo.toml from latest backup  
```

### 📚 Documentation & Help  

```vim
:virgo docs "View documentation for a selected crate, use  -ext  or  -e  to open in docs.rs  
:virgo help "Print this message or the help of the given subcommand(s)  
:virgo about "Display information about Virgo  
```

---

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
```bash
git clone https://github.com/dntstck/virgo-vim ~/.vim/bundle/virgo-vim
```

---

## 🛠️ Troubleshooting  

### **Common Issues**  

**Permission Denied?**  
 
```bash
chmod +x ~/.vim/bundle/virgo/bin/virgo
```

**Cargo.lock Conflicts?**  

```bash
cargo generate-lockfile
```

