# 🚗 Car Sales Analysis — Google Sheets + SQL + Power BI

**Tools used:** Google Sheets | MySQL | Power BI | DAX  
**Status:** Completed

---

## 📌 Short Description

This is an end-to-end car sales analysis project where I cleaned the raw data in Google Sheets, ran 21 SQL queries across 6 levels of complexity to find business insights, and then visualized everything in a Power BI dashboard. The dataset has 23,906 car sales records worth $671M in total revenue across 30 companies, 7 regions, and 12 months.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| 📊 Google Sheets | Raw data cleaning — removed duplicates, fixed blanks, standardized column types, created Salary Band column |
| 🐬 MySQL | 21 SQL queries across 6 levels — from basic KPIs to window functions using RANK() and CTEs |
| 📊 Power BI Desktop | Final dashboard with KPI cards, bar charts, donut charts, and map visuals |
| 🧠 DAX | Measures for Total Revenue, Cars Sold, Average Price, Female %, Male % |
| 📁 File Format | `.sql` for queries, `.pbit` for dashboard template |

---

## 📁 Data Source

**Source:** Car Sales Dataset (Kaggle)

The dataset contains individual car transaction records with 14 columns:

- `Car_id` — Unique sale identifier
- `Date` — Transaction date
- `Company` — Car manufacturer (30 companies)
- `Model` — Specific car model
- `Price ($)` — Sale price
- `Body_Style` — SUV, Sedan, Hatchback, Passenger, Hardtop
- `Transmission` — Auto or Manual
- `Engine` — Engine type
- `Color` — Car color
- `Gender` — Customer gender
- `Annual_Income` — Customer income
- `Salary_Band` — Derived column: Low / Medium / High (created in Google Sheets)
- `Dealer_Region` — 7 regions across the US
- `Months` — Month of sale

---

## 🔍 Features / Highlights

### 🔴 Business Problem

The business had years of sales data across 30 companies and 7 regions — but no clear view of what was actually working.

Key questions I wanted to answer —

- Which companies and models are driving the most revenue?
- Do richer customers actually spend more on cars?
- Is there a gender gap in buying behavior?
- Which regions are consistently strong — and which are lagging?
- What do customers prefer — Auto or Manual? Which colors? Which engines?
- When does revenue peak and crash across the year?
- How concentrated is revenue — is it spread across companies or dominated by a few?

---

### 🎯 Goal of the Analysis

To run a structured, multi-level analysis using SQL and visualize the findings in Power BI — covering executive KPIs, product performance, customer behavior, regional breakdown, vehicle preferences, and time trends — all from a single cleaned dataset.

---

### 📊 Walkthrough of Key Visuals

**KPI Cards (Top Section)**

| Metric | Value |
|---|---|
| Total Revenue | $671,525,465 |
| Total Cars Sold | 23,906 |
| Average Selling Price | $28,090 |
| Total Companies | 30 |
| Total Regions | 7 |
| Female Customers | 21.37% |

---

**Company Revenue Breakdown**

Top 5 companies by revenue —

| Company | Revenue |
|---|---|
| Chevrolet | $47,655,265 |
| Ford | $47,231,583 |
| Dodge | $44,124,996 |
| Oldsmobile | $35,434,512 |
| Mercedes-B | $34,624,123 |

Chevrolet, Ford, and Dodge together hold over 20% of total revenue. The bottom 15 companies contribute less than 25% combined — revenue is heavily concentrated at the top.

---

**Top Models per Company**

Every major company has one standout model —
Mitsubishi Diamante (418 units), Chevrolet Prizm (411), Oldsmobile Silhouette (411), Volkswagen Passat (391), Dodge Ram Pickup (383).

---

**Customer Analysis**

- Male customers make up 78.63%, Female 21.37%
- But Female customers spend more on average — $28,277 vs $28,039
- Income barely affects purchase price — High income band ($28,235) vs Low ($28,063) — only $172 difference

---

**Regional Performance**

| Region | Revenue | Cars Sold |
|---|---|---|
| Austin | $117,192,531 | 4,135 — #1 in both |
| Janesville | $106,351,234 | — |
| Scottsdale | $95,969,374 | — |

Austin, Janesville, and Scottsdale are the only 3 regions above the average revenue line.

---

**Vehicle Preferences**

- Body style: SUV dominates with 6,374 units
- Transmission: Auto 52.59% vs Manual 47.41%
- Engine: Double Overhead Camshaft 52.59% vs Overhead Camshaft 47.41%
- Color: Pale White leads with 11,256 sales

---

**Monthly Revenue Trend**

| Month | Revenue |
|---|---|
| May | $28,370,694 ← Peak |
| August | $28,138,005 |
| July | $18,586,651 ← Lowest |

May to July is a $10M swing. That is a pattern worth planning around.

---

### 💡 Business Insights

- **Revenue is top-heavy** — Chevrolet, Ford, and Dodge dominate. The bottom 10 brands barely contribute.

- **Income does not drive purchase price** — High, Medium, and Low income customers all spend around $28,000. Premium pricing has room to grow without losing volume.

- **Female buyers are underrepresented but spend more** — 21% of buyers but $237 higher average spend. A clear untapped segment.

- **Austin is the strongest market by far** — leads in both revenue ($117M) and units (4,135). Chevrolet is the dominant brand there.

- **SUV is the dominant body style** — 6,374 units. Any brand not pushing SUVs is leaving sales behind.

- **July is the weakest month** — $18.5M vs May's $28.3M. Nearly a $10M gap in one month.

- **Pale White is the most popular color** — stock and ordering should account for this consistently.

- **Auto transmission is pulling ahead** — 52.59% vs 47.41% Manual. The gap is growing.

---

### 📌 Recommendations

1. **Expand in Austin** — Highest revenue and highest volume. More inventory and dealer investment here has a clear return.

2. **Target female customers intentionally** — They are only 21% of buyers but spend more per transaction. A focused marketing campaign could shift this meaningfully.

3. **Push SUVs across all regions** — The data is consistent. SUVs outsell every other body style by a wide margin.

4. **Run promotions in July** — The weakest month by far. A targeted discount or campaign could recover some of that $10M gap vs May.

5. **Promote flagship models per brand** — Every brand has one clear bestseller. Lead with those in ads rather than spreading across the full catalog.

6. **Introduce premium tiers for high-income buyers** — Since income barely affects spend, there is an opportunity to upsell without losing conversions.

7. **Invest more in Janesville and Scottsdale** — Both are above-average revenue regions with room to grow further.

---

## 📸 Dashboard Preview



---

## 📂 Project Structure

```
car-sales-analysis/
├── Car_sales_analysis.sql        ← 21 SQL queries across 6 levels
├── Car_sales_dashboard.pbit      ← Power BI dashboard template
├── Data/
│   └── car_sales.csv             ← Cleaned dataset (from Google Sheets)
├── Screenshots/
│   ├── dashboard_overview.png
│   └── query_outputs/
└── README.md
```

---

## 💡 What I Learned

- Cleaning raw data in Google Sheets before importing into SQL or Power BI
- Writing SQL from basic aggregations all the way up to `RANK() OVER (PARTITION BY ...)` and CTEs
- Spotting business patterns that are not obvious — like income having almost no effect on price
- Building DAX measures in Power BI for calculated KPIs like gender percentage splits
- Connecting SQL findings to Power BI visuals to tell one consistent story across tools

---

## 🙋 Connect with Me

This is part of my ongoing data analytics learning journey. If you have feedback on the SQL, the dashboard, or the analysis — I would genuinely like to hear it.

- 🔗 LinkedIn: [linkedin.com/in/tarun-kumar-5b9280396](https://linkedin.com/in/tarun-kumar-5b9280396)
- 💻 GitHub: [github.com/tarunkumar7906](https://github.com/tarunkumar7906)

---

*Still learning. Open to feedback.*
