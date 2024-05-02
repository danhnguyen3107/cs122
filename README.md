


## Team member:
	Mark Nguyen
	Jeffrey Chan

## Email:
	dinhdanh.nguyen@sjsu.com
	jeffrey.n.chan@sjsu.edu

## Issues: 
- User Experience, Security, Speed Optimization

## Solution:
- Creating content that educates, informs, or entertains. 
-   Conducting original research or analyzing existing data to provide in-depth insights into specific issues.

## High-level design:
-   Registration: a page user can create their account
-   Login: a page user can login
-   Landing page: first page users visit if they don’t have account
-   Home page: users visit this page after login and users can see all posts or create their own posts
-   Post detail: users can create, edit or delete comments. If they are owner they can delete or edit their posts
-   User profile: page that show their information

## Getting Started

This section should provide detailed instructions on how to get started with the project. This includes installing dependencies, setting up the environment, and running the project.

### Installation

1. Clone the repo

  ```
  git clone https://github.com/danhnguyen3107/cs122.git
  ```
2. Create Docker image and container of application and postgres database

  ```
  docker compose up --build
  ```
3. Stop and remove application and postgres container

  ```
  docker compose down
  ```
### ALternative Installation

You can run the application directly; however, it requires configuring the database in the `BlogApp/settings.py` directory. It is recommended to use a PostgreSQL database.

1. Create a [virtual environment](https://docs.python.org/3/tutorial/venv.html) 

  ```
  python -m venv name_of_virtualenv
  ```

  ``` 
  source name_of_virtualenv/bin/activate (for Mac & Linux)
  ```

  OR

  ``` 
  name_of_virtualenv\Scripts\activate (for Window)
  ```

2. Install dependencies

  1. Navigate to the folder that contains requirements.txt:

  2. Install the dependencies:

   ```
   pip install -r requirements.txt
   ```

3. Run the application:
  > **Note:** Make sure you are in the folder contains the file called "manage.py"
  ```
  python manage.py runserver
  ```



