# Zepto Inventory Analysis (Jul 2025)

**Tech Stack:** MySQL, Excel, Power BI

## Objective
Analyze Zepto inventory to identify high-discount products, high-MRP stock-outs, and category-wise revenue & stock insights.

## Dataset Description
| Column Name            | Description |
|------------------------|-------------|
| sku_id                 | Unique identifier for each product entry (Synthetic Primary Key) |
| name                   | Product name as it appears on the app |
| category               | Product category like Fruits, Snacks, Beverages, etc. |
| mrp                    | Maximum Retail Price (converted to ₹) |
| discountPercent        | Discount applied on MRP |
| discountedSellingPrice | Final price after discount (₹) |
| availableQuantity      | Units available in inventory |
| weightInGms            | Product weight in grams |
| outOfStock             | Boolean flag indicating stock availability |
| quantity               | Number of units per package (mixed with grams for loose produce) |

## Approach

### 1. Data Exploration
- Count rows, inspect sample data, check nulls
- Identify distinct categories and stock availability
- Find duplicate product entries

### 2. Data Cleaning
- Remove products with `mrp = 0` or invalid prices
- Verify cleaned data

### 3. Analysis
- **Top 10 best-value products** (highest discount)
- **High MRP products out of stock** (`mrp > 300`)
- **Estimated revenue by category**
- Products with **MRP > 500 & discount < 10%**
- **Top 5 categories by average discount**
- **Price per gram** for products ≥ 100g
- **Weight categories**: Low, Medium, Bulk
- **Total inventory weight per category**

## Key Insights
- High-discount products identified for promotional campaigns
- Stock-out of high-MRP products highlighted for restocking
- Revenue & weight analysis helps manage category-wise inventory

