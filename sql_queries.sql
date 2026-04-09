-- 1. Drug vs Side Effects (Most Risky Drugs)
SELECT drug_name, COUNT(*) AS total_sideeffects
FROM adverse_event_data
WHERE side_effects IS NOT NULL
GROUP BY drug_name
ORDER BY total_sideeffects DESC;

-- 2. Drug Effectiveness (Average Improvement Score)
SELECT drug_name, AVG(improvement_score) AS avg_score
FROM adverse_event_data
GROUP BY drug_name
ORDER BY avg_score DESC;

-- 3. Side Effect Frequency (Most Common Side Effects)
SELECT side_effects, COUNT(*) AS total_cases
FROM adverse_event_data
WHERE side_effects IS NOT NULL
GROUP BY side_effects
ORDER BY total_cases DESC;

-- 4. Condition vs Treatment Effectiveness
SELECT condition, AVG(improvement_score) AS avg_improvement
FROM adverse_event_data
GROUP BY condition
ORDER BY avg_improvement DESC;

-- 5. Gender Distribution
SELECT gender, COUNT(*) AS total_patients
FROM adverse_event_data
GROUP BY gender;

-- 6. Drug vs Treatment Duration
SELECT drug_name, AVG(treatment_duration) AS avg_duration
FROM adverse_event_data
GROUP BY drug_name
ORDER BY avg_duration DESC;