# Virgo Documentation

---

## Table of Contents

1. [📌 Overview](#overview)
2. [⚙️ Commands Overview](#commands-overview)
3. [🔍 Search & Information](#-search--information)
4. [🛠 Dependency Management](#-dependency-management)
5. [📜 Project & Cargo.toml Handling](#-project--cargotoml-handling)
6. [🔄 Backup & Restore](#-backup--restore)
7. [📚 Documentation & Help](#-documentation--help)
8. [📋 Examples & Best Practices](#examples--best-practices)
9. [🗂️ Additional Resources](#additional-resources)

---

## 📌 Overview

Virgo is a feature-rich Vim plugin & CLI tool specifically designed for managing Rust dependencies and project configurations. Whether you need to search crates.io, manage your Cargo.toml, or inspect the dependency tree, Virgo provides a consistent and efficient interface. With an emphasis on modularity and straightforward commands, Virgo helps you keep your Rust projects in top shape. Written in Rust, for Rust.

---

## 🛠️ Commands

| **Command**        | **Category**                     | **Description**                                                                                  |
| ------------------ | -------------------------------- | ------------------------------------------------------------------------------------------------ |
| `:virgo search`    | 🔍 Search & Information          | Search for a crate on crates.io.                                                                 |
| `:virgo stats`     | 🔍 Search & Information          | Display stats (e.g., downloads, recent activity) of a specific crate.                            |
| `:virgo info`      | 🔍 Search & Information          | Show detailed crate information, including description, repository, and dependencies.            |
| `:virgo versions`  | 🔍 Search & Information          | List all available versions of a given crate.                                                    |
| `:virgo trending`  | 🔍 Search & Information          | Display trending crates on crates.io.                                                            |
| `:virgo add`       | 🛠 Dependency Management         | Add a selected crate to your project (optionally with features).                                 |
| `:virgo remove`    | 🛠 Dependency Management         | Remove a selected crate from your dependency list.                                               |
| `:virgo update`    | 🛠 Dependency Management         | Update the version of a selected dependency.                                                     |
| `:virgo rollback`  | 🛠 Dependency Management         | Roll back a dependency to a previous version.                                                    |
| `:virgo compare`   | 🛠 Dependency Management         | Compare the bleeding-edge version with the latest stable version of a given crate.               |
| `:virgo depends`   | 🛠 Dependency Management         | Display all dependencies for a selected crate.                                                   |
| `:virgo all`       | 📜 Project & Cargo.toml Handling | List all installed dependencies in your Cargo.toml.                                              |
| `:virgo health`    | 📜 Project & Cargo.toml Handling | Check the overall health of your Cargo.toml configuration.                                       |
| `:virgo breaking`  | 📜 Project & Cargo.toml Handling | Analyze the Cargo.toml for potential breaking changes.                                           |
| `:virgo lockfile`  | 📜 Project & Cargo.toml Handling | Inspect your Cargo.lock for precise version tracking.                                            |
| `:virgo changelog` | 📜 Project & Cargo.toml Handling | View the changelog for a selected crate with filters (e.g., major, minor, patch, since version). |
| `:virgo tree`      | 📜 Project & Cargo.toml Handling | Display a dependency tree for a crate.                                                           |
| `:virgo init`      | 📜 Project & Cargo.toml Handling | Create a basic Cargo.toml in the current directory.                                              |
| `:virgo edit`      | 📜 Project & Cargo.toml Handling | Edit project details such as Name, Version, and Edition in your Cargo.toml.                      |
| `:virgo backup`    | 🔄 Backup & Restore              | Backup your current Cargo.toml file.                                                             |
| `:virgo restore`   | 🔄 Backup & Restore              | Restore Cargo.toml from the latest backup.                                                       |
| `:virgo docs`      | 📚 Documentation & Help          | View documentation for a selected crate; use `-o` to open in docs.rs or `-e` to view examples.   |
| `:virgo help`      | 📚 Documentation & Help          | Print a help message or get details for specific subcommands.                                    |
| `:virgo about`     | 📚 Documentation & Help          | Display information about Virgo itself (version, credits, etc.).                                 |

---

## 🔍 Search & Information

### `:virgo search`

⠋ **Overview** ⠴
Search for a crate on [crates.io](https://crates.io). This command queries the crates registry based on your search term and returns matching crates in a concise list.

⠗ **Usage**

```bash
:virgo search <crate_name>
```

⠗ **Example:**

```bash
:virgo search serde
```

This searches for crates related to "serde" and returns potential matches along with short descriptions. 🔍

⠇ **Additional Notes:**

- Ideal for quickly finding new dependencies.
- Supports partial names and approximate matches.
- The output may include crate ranking based on popularity and recent activity.

---

### `:virgo stats`

⠋ **Overview** ⠴
Display various statistics for a specified crate, such as download count, recent version activity, and rating (if available).

⠗ **Usage:**

```bash
:virgo stats <crate_name>
```

⠗ **Example:**

```bash
:virgo stats serde
```

⠇ **Additional Notes:**

- Useful for gauging the reliability and community support for a crate.
- May provide historical download counts and trends.

---

### `:virgo info`

⠋ **Overview** ⠴
Show detailed information for a crate including description, repository link, dependencies, and maintainers.

⠗ **Usage:**

```bash
:virgo info <crate_name>
```

⠗ **Example:**

```bash
:virgo info tokio
```

⠇ **Additional Notes:**

- Comprehensive details are provided to help you decide if the crate fits your project needs.
- Includes links to the crate’s documentation and source repository.

---

### `:virgo versions`

⠋ **Overview** ⠴
Display all available versions of a specified crate from crates.io.

⠗ **Usage:**

```bash
:virgo versions <crate_name>
```

⠗ **Example:**

```bash
:virgo versions hyper
```

⠇ **Additional Notes:**

- May include options to filter by pre-release and stable versions.
- Handy for deciding on which version to adopt or rollback.

---

### `:virgo trending`

⠋ **Overview*** ⠴
Lists the trending crates on crates.io based on current activity and downloads.

⠗ **Usage:**

```bash
:virgo trending
```

⠗ **Example:**
Simply run the command to see what’s hot in the Rust community. 🔥

⠇ **Additional Notes:**

- Great for discovering new libraries and tools.
- The trending algorithm might take into account short-term spikes in activity.

---

## 🛠 Dependency Management

### `:virgo add`

⠋ **Overview** ⠴
Add a selected crate to your Cargo.toml dependencies. This command supports additional flags like `-f` to enable specific features during installation.

⠗ **Usage:**

```bash
:virgo add <crate_name> -f <feature>
```

⠗ **Example:**

```bash
:virgo add serde -f derive
```

This command installs the `serde` crate and immediately enables the `derive` feature. 🚀

⠇ **Additional Notes:**

- You can also add multiple features if needed, seperated with a space.
- Useful for streamlining dependency inclusion and configuration.

---

### `:virgo remove`

⠋ **Overview*** ⠴
Remove an existing crate from your Cargo.toml dependencies.

⠗ **Usage:**

```bash
:virgo remove <crate_name>
```

⠗ **Example:**

```bash
:virgo remove anyhow
```

⠇ **Additional Notes:**

- Automatically cleans up version specifications.
- You may be prompted to confirm the removal if the dependency is actively used in your project.

---

### `:virgo update`

⠋ **Overview** ⠴
Update a specified dependency to its latest version, ensuring your project uses the most recent improvements and bug fixes.

⠗ **Usage:**

```bash
:virgo update <crate_name>
```

⠗ **Example:**

```bash
:virgo update tokio
```

⠇ **Additional Notes:**

- Checks for compatibility and may suggest if breaking changes are detected.
- Works well in tandem with the `:virgo compare` command for version analysis.

---

### `:virgo rollback`

⠋ **Overview** ⠴
Roll back a dependency to a previous version if the latest update introduces issues or incompatibilities.

⠗ **Usage:**

```bash
:virgo rollback <crate_name> <target_version>
```

⠗ **Example:**

```bash
:virgo rollback reqwest 0.11.4
```

⠇ **Additional Notes:**

- Helps in mitigating upgrade risks by reverting to a known working version.
- Maintains a version history for easier troubleshooting.

---

### `:virgo compare`

⠋ **Overview** ⠴
Compare the bleeding-edge version of a crate with its latest stable version. This assists in understanding new changes and potential risks before updating.

⠗ **Usage:**

```bash
:virgo compare <crate_name>
```

⠗ **Example:**

```bash
:virgo compare clap
```

⠇ **Additional Notes:**

- Displays version differences including deprecated features, breaking changes, and performance notes.
- Ideal for developers who like staying on the edge while preserving stability.

---

### `:virgo depends`

⠋ **Overview** ⠴
Display all the dependencies of a selected crate. This command can be very insightful when evaluating a crate’s internal structure and external requirements.

⠗ **Usage:**

```bash
:virgo depends <crate_name>
```

⠗ **Example:**

```bash
:virgo depends hyper
```

⠇ **Additional Notes:**

- Outputs a detailed list showing direct and indirect dependencies.
- Useful for auditing a crate for vulnerabilities or bloat.

---

## 📜 Project & Cargo.toml Handling

### `:virgo all`

⠋ **Overview** ⠴
List all the installed dependencies as specified in your Cargo.toml.
⠗ **Usage:**

```bash
:virgo all
```

⠗ **Example:**
Running this command prints a summary of every dependency along with their current versions. 📋

⠇ **Additional Notes:**

- Perfect for a quick project audit before making large-scale changes.

---

### `:virgo health`

⠋ **Overview** ⠴
Perform a comprehensive check of your Cargo.toml for overall health, including misconfigurations and potential version conflicts.

⠗ **Usage:**

```bash
:virgo health
```

⠗ **Example:**
The output may include warnings for duplicate entries, deprecated syntax, or version mismatches.

⠇ **Additional Notes:**

- Consider running this command before dependency updates or project refactors.

---

### `:virgo breaking`

⠋ **Overview** ⠴
Analyze your Cargo.toml to detect breaking changes that might affect your project.
⠗ **Usage:**

```bash
:virgo breaking
```

⠗ **Example:**
Use this command to flag potential version-related issues when upgrading multiple dependencies simultaneously.

⠇ **Additional Notes:**

- Provides actionable insights for mitigating upgrade risks.

---

### `:virgo lockfile`

⠋ **Overview** ⠴
Inspect the Cargo.lock file to verify precise version tracking of your project dependencies.
⠗ **Usage:**

```bash
:virgo lockfile
```

⠗ **Example:**
Review the output to ensure that every dependency is locked to the correct version as per your requirements.

⠇ **Additional Notes:**

- Essential for reproducible builds and debugging dependency issues.

---

### `:virgo changelog`

⠋ **Overview** ⠴
View the changelog for a selected crate. This command supports filtering by major, minor, patch changes, or even since a specified version.

⠗ **Usage:**

```bash
:virgo changelog <crate_name> [options]
```

⠗ **Example:**

```bash
:virgo changelog serde --filter major --since 1.0.0
```

⠇ **Additional Notes:**

- Helps you understand what modifications occurred between versions.
- Useful for planning dependency updates.

---

### `:virgo tree`

⠋ **Overview** ⠴
Display a hierarchical tree of dependencies for a given crate to visualize the relationships between packages.

⠗ **Usage:**

```bash
:virgo tree <crate_name>
```

⠗ **Example:**

```bash
:virgo tree serde
```

⠇ **Additional Notes:**

- The tree structure helps in comprehending both direct and transitive dependencies.
- Facilitates the identification of potential dependency bloat.

---

### `:virgo init`

⠋ **Overview** ⠴
Initialize a basic Cargo.toml file in the current directory. This command sets up the necessary structure for a new Rust project.

⠗ **Usage:**

```bash
:virgo init
```

⠗ **Example:**
After running this command, you’ll have a starter Cargo.toml file with default fields such as `[package]`, `name`, `version`, and `edition`.

⠇ **Additional Notes:**

- Ideal for bootstrapping new projects and ensuring conventions are met.

---

### `:virgo edit`

⠋ **Overview*** ⠴
Edit key fields (Name, Version, Edition) within your current Cargo.toml.
⠗ **Usage:**

```bash
:virgo edit <field> <new_value>
```

⠗ **Example:**

```bash
:virgo edit version 1.2.0
```

⠇ **Additional Notes:**

- Simplifies project configuration changes without manually editing the file.
- Can be chained for multiple fields if needed.

---

## 🔄 Backup & Restore

### `:virgo backup`

⠋ **Overview** ⠴
Creates a backup of your Cargo.toml file. This ensures that critical project configuration is preserved before major changes.

⠗ **Usage:**

```bash
:virgo backup
```

⠗ **Example:**
Executing this command stores a timestamped copy of Cargo.toml in a designated backup location. 📦

⠇ **Additional Notes:**

- Recommended to use before running bulk dependency updates.
- Can be automated within deployment scripts.

---

### `:virgo restore`

⠋ **Overview** ⠴
Restores Cargo.toml from the latest backup, making it easy to revert unwanted changes.

⠗ **Usage:**

```bash
:virgo restore
```

⠗ **Example:**
If an update went wrong, simply run this command to roll back to the previously backed-up Cargo.toml.

⠇ **Additional Notes:**

- Ensures a safety net for configuration management.
- Useful in continuous integration workflows.

---

## 📚 Documentation & Help

### `:virgo docs`

⠋ **Overview** ⠴
View documentation for any selected crate. You can enhance your command with extra flags:

- `-o` — Opens the crate documentation in docs.rs.
- `-e` — Displays example code from the crate.

⠗ **Usage:**

```bash
:virgo docs <crate_name> [options]
```

⠗ **Example:**

```bash
:virgo docs tokio -o
```

Opens Tokio’s documentation directly in your default browser. 📖

⠇ **Additional Notes:**

- Ideal for developers who need to consult API documentation on the fly.
- Supports further filtering if multiple documentation sources exist.

---

### `:virgo help`

⠋ **Overview** ⠴
Print a comprehensive help message, including usage details for all commands or specific subcommands as needed.

⠗ **Usage:**

```bash
:virgo help [command]
```

⠗ **Example:**

```bash
:virgo help add
```

⠇ **Additional Notes:**

- Acts as an in-terminal guide to Virgo’s functionality.
- Frequently updated to include new commands and options.

---

### `:virgo about`

⠋ **Overview** ⠴
Display information about Virgo itself, including version details, authorship, and license information.

⠗ **Usage:**

```bash
:virgo about
```

⠗ **Example:**
Running this command prints out the current version, build date, and credits. ℹ️

⠇ **Additional Notes:**

- Provides transparency about the tool and its maintainers.
- Useful for troubleshooting and ensuring you are on the latest version.

---

## Examples & Best Practices

- **Chaining Commands:**
  You can integrate Virgo commands into your development workflow. For example, use `:virgo health` before performing an update (`:virgo update`) to ensure your Cargo.toml is error-free.

- **Feature Flags in `:virgo add`:**
  When adding crates, always check the available features and specify them using `-f` to prevent unnecessary bloat.
  
  ```bash
  :virgo add serde -f derive
  ```

- **Version Comparisons:**
  Before updating any dependency, run `:virgo compare` to see if the bleeding-edge commits have any breaking changes compared to the stable release.

- **Backup Routinely:**
  Make it a habit to use `:virgo backup` before large modifications, ensuring you can always `:virgo restore` to a safe state.

---

## Additional Resources

- **GitHub Repository:**
  Check out the [Virgo GitHub repo](https://github.com/<your_repo>) for issue tracking, and community discussions.

- **License & Credits:**
  Virgo is distributed under the [Mozilla Public License](LICENSE). Credits and acknowledgments to all contributors, testers, and the vibrant Rust community.

---
