# NHS Emergency Care Analysis — March 2026

## Project Overview

This project analyses NHS England A&E (Accident & Emergency) performance data for March 2026, using SQL to explore waiting times, emergency admissions, and trust-level performance across England.

The dataset was sourced from [NHS England's official statistics](https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/) and contains data from approximately 200 NHS trusts.

---

## Tools Used

- **DB Browser for SQLite** — SQL environment
- **NHS England Open Data** — Source dataset

---

## Key Questions Explored

1. Which NHS trusts had the highest A&E attendances in March 2026?
2. Which trusts are worst at hitting the 4 hour wait target?
3. Which trusts had the most patients waiting over 12 hours?
4. Which trusts had the highest emergency admission rates?
5. How do trusts compare when categorised into performance bands?

---

## Key Findings

### 1. Busiest A&E Departments
University Hospitals Birmingham was the busiest single A&E in England in March 2026 with 34,602 Type 1 attendances. The total across all trusts was 1,450,980 attendances in a single month.

### 2. Four Hour Wait Performance
The NHS target is that fewer than 5% of patients should wait over 4 hours. Analysis revealed that virtually no trust is meeting this target. University Hospitals Plymouth was the worst performer with 62.55% of patients waiting over 4 hours.

A notable regional pattern emerged, four Cheshire-based trusts all appeared in the worst performers list, suggesting regional systemic pressures rather than isolated hospital issues:
- Mid Cheshire Hospitals (52.55%)
- Wirral University Teaching Hospital (51.74%)
- Countess of Chester Hospital (50.94%)
- East Cheshire NHS Trust (50.74%)

### 3. Twelve Hour Waits
Royal Free London had the highest number of patients waiting over 12 hours (1,771), equivalent to approximately 59 patients per day. Nottingham and Shrewsbury appeared in both the worst 4 hour and 12 hour wait lists, identifying them as consistently underperforming trusts.

### 4. Emergency Admission Rates
West Hertfordshire Teaching Hospitals had the highest admission rate at 56.14%, meaning over half of all A&E attendances resulted in the patient being admitted to a ward. This suggests the trust is dealing with a particularly unwell patient population.

### 5. Performance Band Analysis
Trusts were categorised into four performance bands based on the percentage of patients waiting over 4 hours:

| Band | Threshold | Number of Trusts |
|------|-----------|-----------------|
| Critical | 50%+ waiting over 4hrs | 9 |
| Poor | 30–50% | 86 |
| Acceptable | 10–30% | 26 |
| Good | Under 10% | 1 |

Only **Sheffield Children's NHS Foundation Trust** achieved a Good rating (2.16%), though it should be noted this is a specialist children's hospital which operates differently to a general A&E.

---

## Conclusions

The data paints a concerning picture of NHS emergency care in March 2026. No trust is close to meeting the 95% four hour wait target, with the majority falling into the Poor performance band. Regional clustering of underperforming trusts in areas like Cheshire suggests that systemic, area-wide pressures, such as staffing shortages or population demand may be contributing factors beyond individual hospital management.

Trusts such as Nottingham and Shrewsbury, which appear across multiple measures, warrant particular attention as persistent underperformers.

---

## Data Source

NHS England — Monthly A&E Attendances and Emergency Admissions
https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/
