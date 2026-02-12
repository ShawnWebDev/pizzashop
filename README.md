
# Pizza Shop
## A Menu Management, Inventory Tracking, and Point of Sale Application


### Description:

Pizza Shop is a digital ordering system that enables customers, employees, and management to view, interact, and manage 
inventory and orders in real time. 


### Key Challenges:



### Architecture & System Design:

- Real-Time Updates: Server-Sent Events (SSE) provides employees with a reactive dashboard, reducing API polling and improving server performance.
- Containerization: A multi-container environment using Docker Compose, separating the persistence layer (MySQL) from the application logic for better scalability.


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

1. Clone this repo,
2. ./mvnw clean package

