#!/bin/bash

# Define color codes for better UI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}-------------------------------------------${NC}"
echo -e "${YELLOW}    Welcome to the Password Generator${NC}"
echo -e "${CYAN}-------------------------------------------${NC}"

sleep 1

# Prompt user for password length
echo -e "${GREEN}Enter the desired password length: ${NC}"
read pass_length

# Prompt user for complexity level
echo -e "${GREEN}Select password complexity level:${NC}"
echo "1. Only Letters (A-Z, a-z)"
echo "2. Letters & Numbers (A-Z, a-z, 0-9)"
echo "3. Letters, Numbers & Special Characters"
read -p "Enter your choice (1-3): " complexity

# Function to generate a password based on complexity
generate_password() {
    case $complexity in
        1) openssl rand -base64 48 | tr -dc 'A-Za-z' | cut -c1-"$pass_length" ;;
        2) openssl rand -base64 48 | tr -dc 'A-Za-z0-9' | cut -c1-"$pass_length" ;;
        3) openssl rand -base64 48 | tr -dc 'A-Za-z0-9!@#$%^&*()-_+=' | cut -c1-"$pass_length" ;;
        *) echo -e "${RED}Invalid choice! Using default (letters, numbers & special characters).${NC}"
           openssl rand -base64 48 | tr -dc 'A-Za-z0-9!@#$%^&*()-_+=' | cut -c1-"$pass_length"
           ;;
    esac
}

# Generate multiple passwords
echo -e "${GREEN}How many passwords do you want to generate?${NC}"
read num_passwords

echo -e "${CYAN}Generating passwords...${NC}"
sleep 1

# Create a file to store passwords
password_file="generated_passwords.txt"
> "$password_file"  # Clear the file before writing

for i in $(seq 1 "$num_passwords");
do
    password=$(generate_password)
    echo "Password $i: $password"
    echo "Password $i: $password" >> "$password_file"
done

echo -e "${YELLOW}Passwords saved to $password_file${NC}"
echo -e "${GREEN}Thank you for using the Password Generator!${NC}"

