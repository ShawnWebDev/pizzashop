
# Pizza Shop

## A Menu Management, Inventory Tracking, and Point of Sale Application

### Description:

Pizza Shop is a digital ordering system that enables customers, employees, and management to view, interact, and manage 
inventory and orders in real time. 

### Role-based access:

- **Customers** are authorized to use the menu/ordering interface to browse the menu, build custom pizzas, add items to 
their cart, and submit orders.
- **Employees** are able to see orders placed in real time, utilizing server sent events that populate their portal as 
orders are submitted. They can then view recipes for the menu items in the order for fulfilment.
- **Management** can use multiple reporting tools to view and manage the menu, inventory, users, and orders placed 
over specified periods.

### Tech Stack:

- MySQL
- Java Spring Boot
- Thymeleaf
- JavaScript
- Docker
- Nginx
- AWS

### Install Guide:

1. Install Java 21 and latest version of Docker and Docker Compose
2. Clone this repo
3. Build .jar and tag application as pizzashop docker image using provided Dockerfile
4. run Docker Compose with (docker-compose up) from root directory (-d flag will detach application logs from terminal)
   1. docker compose will use mySQL 8.0 from Docker hub
   2. generic username, passwords, and environment variables are defined in docker-compose.yml
   3. CTRL + C or typing docker-compose down will shut down the application and mySQL server images

