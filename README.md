# Vite/React Storybook Component Library
Please follow the instructions below to build and run this Dockerfile and Vite/React Storybook.

## Step 1: Clone this Repository.
Run: `git clone https://github.com/Ian-Protocol/pascal_ian_coding_assignment12.git`

## Step 2: Build the Docker image.
Navigate into the repo folder: `cd pascal_ian_coding_assignment12`  
Then run: `docker build -t pascal_ian_coding_assignment12 .`

## Step 3: Run the container.
Run: `docker run -d -p 8083:8083 --name pascal_ian_coding_assignment12 pascal_ian_coding_assignment12`

## Step 4: View the site.
Open your browser and navigate to: `http://localhost:8083`