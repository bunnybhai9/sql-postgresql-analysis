# 📊 PostgreSQL Business Analysis Project

This project demonstrates intermediate-level SQL analysis using a simulated e-commerce and HR database in **PostgreSQL**. It includes synthetic data, schema design, and analytical queries covering customer behavior, product performance, and employee metrics.

---

## 📄 Project Description

This project is a hands-on **PostgreSQL-based data analysis portfolio** that demonstrates intermediate SQL skills using a simulated business database. It covers **customer behavior**, **product sales performance**, and **HR analytics** through structured queries.

Using self-generated CSV datasets for an e-commerce and HR environment, I designed relational schemas, loaded data into PostgreSQL, and developed over a dozen analytical queries utilizing `JOINs`, `aggregations`, `GROUP BY`, `HAVING`, `window functions`, and `date filtering`.

This project simulates real-world business questions such as:
- Who are our top-spending customers?
- Which product categories generate the most revenue?
- What days yield the highest average order value?
- Which department pays the highest average salary?

---

## 📁 Dataset Overview

The project consists of the following tables:

| Table         | Description                          |
|---------------|--------------------------------------|
| `customers`   | Customer information (100 rows)      |
| `orders`      | Customer orders with amounts         |
| `order_items` | Products within each order           |
| `products`    | Product catalog and categories       |
| `employees`   | Company staff with salaries          |
| `departments` | Department names                     |

---

## ⚙️ Technologies Used

- PostgreSQL 15+
- pgAdmin (GUI)
- SQL (Window functions, CTEs, joins)
- Faker (for data generation)

---

## 🧠 SQL Questions Answered

### 🛍️ Sales & Product Analysis
1. Which customer has spent the most overall?
2. List all customers who have never placed an order.
3. What is the average order value per customer?
4. What are the top 5 best-selling products by quantity?
5. What are the top 3 categories by revenue?
6. Which product category has the highest average order value?
7. Rank products by revenue within each category.
8. Which day of the week has the highest average order value?

### 👥 Customer Intelligence
9. How many first-time customers ordered in the last 30 days?
10. Which customers ordered from multiple product categories?

### 🧑‍💼 HR Analysis
11. Which department has the highest average salary?

---

## 📌 File Structure

```
├── data/
│   ├── customers.csv
│   ├── orders.csv
│   ├── order_items.csv
│   ├── products.csv
│   ├── employees.csv
│   └── departments.csv
├── module_1.sql         # SQL file containing all analysis queries
├── create_tables.sql    # (Optional) SQL to create tables
└── README.md
```

---

## ✅ How to Use

1. Clone this repo
2. Create a PostgreSQL database (`analysis_db`)
3. Run `create_tables.sql` (if provided)
4. Import all CSVs using `COPY` or pgAdmin
5. Run `module_1.sql` for query analysis

---

## 🚀 Author

**Rupesh [Your Last Name]**  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/YOUR-USERNAME/)  
📫 Email: your.email@example.com

---

## 💡 Want to Contribute?

Feel free to fork this repo and add new features like:
- Streamlit dashboards
- New analytical use cases
- API integration
