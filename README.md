# PowerShell Profile Configuration

This repository contains configuration files and scripts to enhance your PowerShell experience. It includes customizations for the terminal appearance, Git configuration, and various PowerShell modules. Below is a detailed explanation of each file in this repository:

---

## Files in this Repository

### 1. **`ps7.ps1`**

This is the main PowerShell profile script. It is executed when a new PowerShell session starts. Key features include:

- **PSReadLine Configuration**: Enhances the command-line editing experience with features like history-based suggestions and custom key bindings.
- **Terminal-Icons Module**: Adds file and folder icons to the terminal for better visual clarity.
- **Oh My Posh Integration**: Configures the terminal prompt using the `oh-my-posh` tool with a custom theme defined in `ohmyposh.json`.

### 2. **`gitconfig.ps1`**

This script sets up Git with a comprehensive set of configurations to improve usability and performance. Highlights include:

- **User Information**: Sets your Git username and email (enter your own values first).
- **Branch and Tag Sorting**: Configures sorting by commit date and version numbers for better organization.
- **Diff Enhancements**: Improves the readability of diffs with advanced algorithms and colorization.
- **Push and Fetch Behavior**: Optimizes push and fetch operations, including automatic pruning of remote branches and tags.
- **Rebase and Merge Settings**: Enables features like auto-squashing and conflict resolution reuse.
- **Performance Tweaks**: Activates filesystem monitoring and caching for faster operations.

### 3. **`ohmyposh.json`**

This file defines the theme for the `oh-my-posh` prompt. It customizes the appearance of your terminal with the following features:

- **Session Information**: Displays session details with a diamond-style prompt.
- **Path Display**: Shows the current working directory with icons and separators.
- **Git Status**: Provides detailed Git branch and status information, including changes in the working directory and staging area.
- **Language Versions**: Displays the current version of tools like .NET, Python, and Node.js.
- **Exit Status**: Indicates the success or failure of the last command with icons and colors.
- **Time Display**: Shows the current time on the right side of the prompt.

### 4. **`README.md`**

This file (the one you're reading) provides an overview of the repository and its contents.

---

## How to Use

1. **Set Up PowerShell Profile**:

   - Change your PowerShell Profile to reference `ps7.ps1`
     - `code $PROFILE`
     - `. D:\source\Profile\ps7.ps1`
   - Ensure the required modules (`PSReadLine`, `Terminal-Icons`, and `oh-my-posh`) are installed.

2. **Configure Git**:

   - Run the `gitconfig.ps1` script to apply the Git configurations.

3. **Customize Oh My Posh**:
   - Modify the `ohmyposh.json` file to adjust the terminal theme to your liking.
   - Install `oh-my-posh` if not already installed.

---

## Prerequisites

- **PowerShell 7+**: This configuration is designed for PowerShell 7 or later.
- **Modules**:
  - `PSReadLine`
  - `Terminal-Icons`
  - `oh-my-posh`
- **Git**: Ensure Git is installed and available in your system's PATH.

---

## Additional Notes

- The configurations in this repository are tailored for a modern and efficient development workflow.
- Feel free to customize the scripts and JSON files to suit your preferences.
- For more information on the tools used, refer to their official documentation:
  - [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/)
  - [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
  - [Oh My Posh](https://ohmyposh.dev/)

---

Happy coding!
