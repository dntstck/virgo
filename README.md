# **Virgo ♍︎ - A Vim Plugin for Rust Crate Management 🦀**

**Virgo** (Vi~~m~~ & ~~Ca~~rgo) is a **powerful Vim plugin** designed to simplify **Rust crate management** directly from your editor. Search for crates, manage dependencies, and explore stats—all without leaving Vim!  

🚀 **Currently at v1.1.0!** Virgo continues to evolve, incorporating bug fixes, usability enhancements, and polished features to redefine Rust development.  

---

## 🔥 Features  
✅ **Crate Management** – Search, add, remove, update, and rollback Rust crates effortlessly.  
✅ **Seamless Integration** – Streamlined commands executed directly from Vim using `:virgo`.  
✅ **Visual Feedback** – Enhanced output formatting for better readability and usability.  
✅ **Dependency Insights** – Examine dependencies, compare versions, and track stats like downloads and timelines.  
✅ **Rollback Protection** – Easily revert changes for safer updates and modifications.  
✅ **Optimized Performance** – Built with **Rust** for exceptional speed and reliability.  

---

## 🚀 What's New in v1.1.0  

📌 **Bug Fixes**:  
- Improved `update` and `rollback` functionality for smoother operations.
- Fixed API issues when calling `depends`  
- Duplicate crate entry prevention in `Cargo.toml`.  

📌 **Enhanced Features**:  
- **Stats Output**: Grouped by value with clearer indentation for better readability.  
- **Depends Command**: Enhanced dependency breakdown with grouping by kind and features.  

📌 **Polish and Usability**:  
- Refinements across commands and user feedback integration.  

---

## 🛠️ Commands Overview  

### **Crate Management**  
```vim
:virgo search <crate>      " Search for a crate  
:virgo add <crate>         " Add a crate to dependencies  
:virgo remove <crate>      " Remove a crate from dependencies  
:virgo all                 " Lists all crates in Cargo.toml  
:virgo outdated            " Identifies outdated dependencies  
```

### **Updates & Rollbacks**  
```vim
:virgo update <crate>      " Update a crate to <version>, or leave blank for the latest  
:virgo rollback <crate>    " Rollback a crate to <version>, or leave blank for stable  
```

### **Insights & Stats**  
```vim
:virgo stats <crate>       " Shows crate statistics: downloads, versions, timeline  
:virgo depends <crate>     " Check crate dependencies, grouped by kind and features  
:virgo compare <crate>     " Compare latest vs stable versions  
:virgo versions <crate>    " List all available versions for a crate  
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

**Permission Denied**  
If you encounter permission issues, run:  
```bash
chmod +x ~/.vim/bundle/virgo/bin/virgo
```

**Cargo.lock Conflicts**  
If `Cargo.lock` is causing merge headaches, consider:
- Regenerating it:  
  ```bash
  cargo generate-lockfile
  ```
- Resolving conflicts during merge:  
  ```bash
  git checkout --ours Cargo.lock
  git add Cargo.lock
  git commit -m "Resolved Cargo.lock conflicts"
  ```
