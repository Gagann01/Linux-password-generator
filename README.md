# Linux-password-generator

# Password Generator Script

This is a simple yet customizable Bash script designed to generate secure passwords. It allows users to specify the desired password length, choose the complexity level, and generate multiple passwords at once. The generated passwords are saved in a text file for easy access.

## Features:
- **Customizable Password Length**: You can specify the length of the password.
- **Multiple Complexity Levels**:
  - **Level 1**: Only letters (A-Z, a-z)
  - **Level 2**: Letters and numbers (A-Z, a-z, 0-9)
  - **Level 3**: Letters, numbers, and special characters (A-Z, a-z, 0-9, !@#$%^&*()-_+=)
- **Generate Multiple Passwords**: You can generate as many passwords as you need at once.
- **Password File**: The generated passwords are stored in a `generated_passwords.txt` file.

## Requirements:
- A Bash-compatible terminal (Linux, macOS, or Windows with WSL)
- `openssl` installed (for password generation)

## How to Use:
1. Clone or download the repository.
2. Open the terminal and navigate to the project directory.
3. Make the script executable:
   ```bash
   chmod +x password_generator.sh
## Run the script:
- ./pass_generator.sh

## Example output :
![pass_gen](https://github.com/user-attachments/assets/28609ac0-7c2b-4a46-aae5-b7db75b3f14c)

