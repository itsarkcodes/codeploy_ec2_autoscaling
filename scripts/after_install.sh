#!/bin/bash
# Navigate to the app directory
cd /var/www/my-react-app

# Install dependencies and build the project
npm install
npm run build

# Remove all files and directories except the 'build' folder
find . -maxdepth 1 ! -name 'build' -exec rm -rf {} +

# Move the contents of the 'build' folder to the current directory
mv build/* ./
rm -rf build  # Optionally, delete the now-empty 'build' directory

# Set proper permissions (optional)
chmod -R 755 /var/www/html/my-react-app
