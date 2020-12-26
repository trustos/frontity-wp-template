# Change to parent directory
pushd ../

# Local .env
if [ -f .env ]; then
    # Load Environment Variables
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')

    # Create project folder and install frontity
    if [ ! -d "$APP_NAME" ]; then
        mkdir $APP_NAME; else 
        rm -rf $APP_NAME
    fi

    # Run project create command with args
    npx frontity create $APP_NAME --theme @frontity/twentytwenty-theme --no-prompt

    # Add project folder to the gitignore
    if [ -f .gitignore ]; then
        echo "$APP_NAME" >> .gitignore
    fi
fi
