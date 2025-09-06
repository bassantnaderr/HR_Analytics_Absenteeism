# Employee Absenteeism Analysis  

## Project Overview  
This project was developed as part of an HR request to the Data Analytics team to analyze employee absenteeism and provide actionable insights. The aim is to reduce absenteeism, improve workforce efficiency, and align compensation strategies with employee wellness.  

## Business Requests  
1. **Healthy Bonus Program** – Provide a list of healthy employees (non-smokers, non-drinkers, BMI < 25, and below-average absenteeism) eligible for a $1,000 bonus pool.  
2. **Compensation Adjustment** – Calculate an annual wage increase for non-smokers within a fixed budget of 983,221.  
3. **Absenteeism Dashboard** – Create an interactive dashboard in Power BI to visualize absenteeism trends, reasons, demographics, and risk factors based on an approved HR wireframe.  

## Data and SQL Approach  
- **Joins:** Combined absenteeism, compensation, and reasons tables into a unified dataset.  
- **Healthy Employee Filter:** Queried employees meeting health and absenteeism criteria for the bonus program.  
- **Compensation Calculation:** Allocated budget across non-smokers, resulting in an estimated **0.68 hourly increase** or **1,414 annual increase**.  
- **Data Transformation:** Added derived fields such as **BMI category** and **season of absence** for better analysis.  

## Dashboard Insights  
- Total employees analyzed: **737**  
- Total lost hours: **5,124**  
- Average absenteeism per employee: **6.95 hours**  
- Higher absenteeism in **Winter months** and **early weekdays**  
- Lifestyle and demographic factors (education, pets, smoking, drinking) strongly influence absenteeism patterns  
- Insights support HR in workforce planning, wellness initiatives, and absenteeism reduction strategies  

## Deliverables  
- **SQL Queries** – Data preparation and business logic  
- **Power BI Dashboard** – Visualization of absenteeism insights  
