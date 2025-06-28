
# 🍕 Pizza Sales Analysis – SQL vs Power BI

This project analyzes a pizza sales dataset using both **SQL** and **Power BI**, demonstrating how the same business questions can be answered using different tools. The purpose is to highlight the strengths of both SQL (for precise, backend querying) and Power BI (for visual, interactive reporting).

---

## 📁 Project Structure

- `pizza Sales.sql`: Contains all SQL queries used to extract business metrics such as revenue, order trends, best-selling pizzas, and sales breakdowns.
- `Pizza Sales Report.pbix`: Power BI dashboard featuring the same KPIs and visual insights created from the dataset.

---

## 🔍 Key Business Questions Answered

- 📊 What is the **total revenue**, **total orders**, and **average order value**?
- 📅 What are the **daily** and **monthly trends** in orders?
- 🥇 What are the **top and bottom performing pizzas** by revenue, quantity, and order count?
- 📐 What is the **sales distribution by pizza size and category**?

---

## 🧰 Tools Used

| Tool        | Purpose                                   |
|-------------|-------------------------------------------|
| **SQL**     | Data aggregation and metric calculations  |
| **MySQL**   | Relational database for query execution   |
| **Power BI**| Visual dashboard and interactive insights |

---

## 📈 Sample KPIs from the SQL Query

- **Total Revenue:** SUM(total_price)
- **Average Order Value:** SUM(total_price) / COUNT(DISTINCT order_id)
- **Top 5 Pizzas by Revenue:** GROUP BY pizza_name ORDER BY SUM(total_price) DESC
- **Order Trends:** GROUP BY DAYNAME(order_date), MONTH(order_date)

---

## ✅ Conclusion

This project demonstrates how SQL and Power BI can work hand-in-hand to provide both **analytical depth** and **business-friendly visualization**. SQL was powerful for transforming raw data into KPIs, while Power BI made the insights intuitive and actionable. This comparison reinforces the value of using the right tool for the right task — with SQL for backend logic, and Power BI for front-end communication.



