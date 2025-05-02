# **Virgo ♍︎ - A Vim Plugin for Rust Crate Management 🦀**

**Virgo** (Vi~~m~~ & ~~Ca~~rgo) is a **powerful Vim plugin** designed to simplify **Rust crate management** directly from your editor. Search for crates, manage dependencies, and explore stats—all without leaving Vim!  

🚀 **Currently at v1.2.0!** Virgo continues to evolve, incorporating bug fixes, usability enhancements, and polished features to redefine Rust development.  

---

## 🔥 Features  
✅ **Crate Management** – Search, add, remove, update, and rollback Rust crates effortlessly.<br>
✅ **Seamless Integration** – Streamlined commands executed directly using `:virgo`.<br>
✅ **Backup & Restore** – Secure your `Cargo.toml` and roll back changes safely.<br>
✅ **Visual Feedback** – Enhanced output formatting for better readability and usability.<br> 
✅ **Dependency Insights** – Examine dependencies, compare versions, and track stats.<br> 
✅ **Rollback Protection** – Easily revert changes for safer updates and modifications.<br>
✅ **Optimized Performance** – Built with **Rust** for exceptional speed and reliability.<br>

---

## 🚀 What's New in v1.1.0  

📌 **Bug Fixes**:  
- Improved `update` and `rollback` functionality for smoother operations.  
- Fixed API issues in `depends`.  
- Prevented duplicate crate entries in `Cargo.toml`.  

📌 **Enhanced Features**:  
- **Stats Output** – Clearer indentation and grouping for better readability.  
- **Depends Command** – Enhanced breakdown by kind and features.  
- **Trending Crates** – View the most downloaded crates in the past 90 days using `:virgo trending`.  
- **Backup & Restore** – Securely back up and restore Cargo.toml with ease.  

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
:virgo trending            " Shows top 5 crates with the most downloads in 90 days  
```

### **Backup & Restore**  
```vim
:virgo backup              " Back up the Cargo.toml file  
:virgo restore             " Restore a backed-up Cargo.toml  
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
If `Cargo.lock` is causing headaches, consider:
- Regenerating it:  
  ```bash
  cargo generate-lockfile
  ```

