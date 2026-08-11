
# Data Resources

Datasets Collection for [AIBHS](https://ic3.center.ufl.edu/education/aibhs/) Courses. Each one lives in its own subfolder.

**Repo:** [UF-AIBHS/aibhs_datasets](https://github.com/UF-AIBHS/aibhs_datasets) — clone it directly, or use the per-dataset links below to download just one folder. · [Download entire repo (ZIP)](https://github.com/UF-AIBHS/aibhs_datasets/archive/refs/heads/main.zip)

## Table of Contents

- [Overview Table](#overview-table)
- [A Note on Licensing](#a-note-on-licensing)
- [Subsampled & Partial Datasets](#subsampled-partial-datasets)
- [1. Heart Disease (Cleveland)](#1-heart-disease-cleveland)
- [2. Pima Indians Diabetes](#2-pima-indians-diabetes)
- [3. Heart Failure Clinical Records](#3-heart-failure-clinical-records)
- [4. Breast Cancer Wisconsin (Diagnostic)](#4-breast-cancer-wisconsin-diagnostic)
- [5. Snow's Cholera Map](#5-snows-cholera-map)
- [6. Framingham Heart Study](#6-framingham-heart-study)
- [7. NHANES (2017–2018 Demographics)](#7-nhanes-20172018-demographics)
- [8. BRFSS (2023, subsampled)](#8-brfss-2023-subsampled)
- [9. WHO Life Expectancy](#9-who-life-expectancy)
- [10. Diabetes 130-US Hospitals (1999–2008)](#10-diabetes-130-us-hospitals-19992008)
- [11. Stroke Prediction Dataset](#11-stroke-prediction-dataset)
- [12. MIMIC-IV Clinical Database Demo](#12-mimic-iv-clinical-database-demo)
- [13. eICU Collaborative Research Database Demo](#13-eicu-collaborative-research-database-demo)

## Overview Table

| Folder | Official Dataset Name | Source | License / Data Use Policy | Notes | Description |
|---|---|---|---|---|---|
| [`heart_disease_cleveland/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/heart_disease_cleveland) | Heart Disease (Cleveland subset) | [UCI ML Repository](https://archive.ics.uci.edu/dataset/45/heart+disease) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) — reuse and adaptation permitted with attribution | Full dataset (303 rows × 14 cols) | Clinical/demographic attributes used to predict presence of heart disease; used across nearly every weekly notebook |
| [`pima_diabetes/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/pima_diabetes) | Pima Indians Diabetes Database | [jbrownlee/Datasets GitHub mirror](https://github.com/jbrownlee/Datasets); no longer listed in UCI's current repository | No license file on the mirror repo. Originates from NIDDK (a US federal agency); cite the original NIDDK study and this mirror when reusing | Full dataset (768 × 9) | Diagnostic measurements from female Pima Indian patients predicting diabetes onset |
| [`heart_failure_clinical/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/heart_failure_clinical) | Heart Failure Clinical Records Dataset | [UCI ML Repository](https://archive.ics.uci.edu/dataset/519/heart+failure+clinical+records) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) — reuse and adaptation permitted with attribution | Full dataset (299 × 13) | Follow-up records of heart failure patients predicting mortality |
| [`breast_cancer_wisconsin/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/breast_cancer_wisconsin) | Breast Cancer Wisconsin (Diagnostic) | [UCI ML Repository](https://archive.ics.uci.edu/dataset/17/breast+cancer+wisconsin+diagnostic) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) — reuse and adaptation permitted with attribution | Full dataset (569 × 32) | Cell-nucleus features from biopsy imaging predicting malignant vs. benign |
| [`snows_cholera_map/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/snows_cholera_map) | John Snow's 1854 Cholera Map Data | Original repo (`rtwilson/SnowsCholeraMap`) is dead; downloaded from GitHub Gist mirrors: [deaths](https://gist.github.com/radovankavicky/3a963cad5df48c94794a5d6dca7b383a), [pumps](https://gist.github.com/radovankavicky/7110d029648d6904617b44d42e2d534b) | Public domain — 1854 source data, far outside any copyright term; the Gist mirrors carry no separate license | 250 addresses / 489 deaths, 8 pumps. Column names differ from what the Week 1 notebook expects (`Number of deaths` vs. `Count`) | Deaths and water-pump locations from the Broad Street cholera outbreak |
| [`framingham_heart_study/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/framingham_heart_study) | Framingham Heart Study (teaching extract) | [GitHub mirror](https://github.com/GauravPadawe/Framingham-Heart-Study) of a commonly used Kaggle teaching dataset | No license file on the mirror repo. The *official* Framingham dataset is controlled by NHLBI/BioLINCC and requires a formal data-access application for research use — this unofficial teaching extract is for coursework only, not for publication or redistribution as "the" Framingham dataset | Full extract (4,240 × 16) | Cardiovascular risk factors predicting 10-year coronary heart disease |
| [`nhanes/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/nhanes) | NHANES 2017–2018, Demographics component (`DEMO_J`) | [CDC/NCHS NHANES](https://wwwn.cdc.gov/nchs/nhanes/index.html), specifically the [DEMO_J file page](https://wwwn.cdc.gov/Nchs/Data/Nhanes/Public/2017/DataFiles/DEMO_J.htm) | US federal government public-use data file — public domain domestically (17 U.S.C. §105); free to use, no permission or fee required | Only 1 of many component files for 1 of many survey cycles (9,254 × 46); converted from `.XPT` to `.csv` | National survey demographics + sampling weights; not yet joined to any health/exam/lab component |
| [`brfss/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/brfss) | Behavioral Risk Factor Surveillance System, 2023 | [CDC BRFSS](https://www.cdc.gov/brfss/annual_data/annual_data.htm) | US federal government public-use data file — public domain domestically (17 U.S.C. §105); free to use, no permission or fee required | Subsampled: random 5,000 of 433,323 rows (`random_state=42`); full file is ~1.2 GB unzipped | Annual US health-behavior survey (350 variables) |
| [`life_expectancy_who/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/life_expectancy_who) | Life Expectancy (WHO) | [GitHub Gist mirror](https://gist.github.com/aishwarya8615/89d9f36fc014dea62487f7347864d16a); exact upstream Kaggle version unclear (see below) | Unclear — the two candidate Kaggle originals carry different licenses (one "Other/unspecified," one CC0 Public Domain) and this file doesn't cleanly match either; treat as coursework-only until provenance is confirmed | 2,461 × 23, 156 countries; doesn't match either well-known Kaggle release of this dataset | Country-year panel (2000–2015) of health/economic indicators predicting life expectancy |
| [`diabetes_130_hospitals/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/diabetes_130_hospitals) | Diabetes 130-US Hospitals for Years 1999–2008 | [UCI ML Repository](https://archive.ics.uci.edu/dataset/296/diabetes+130-us+hospitals+for+years+1999-2008) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) — reuse and adaptation permitted with attribution | Full dataset (101,766 × 50) + `IDS_mapping.csv` lookup table | De-identified inpatient encounters predicting 30-day readmission |
| [`stroke_prediction/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/stroke_prediction) | Stroke Prediction Dataset | [Kaggle](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset) (via GitHub Gist mirror) | Kaggle-listed as **"Data files © Original Authors"** — not CC0; no redistribution rights granted beyond Kaggle's terms, use for coursework with attribution to the Kaggle source | Full dataset (5,110 × 12) | Demographic/lifestyle attributes predicting stroke occurrence (~5% positive class) |
| [`mimic_iv_demo/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/mimic_iv_demo) | MIMIC-IV Clinical Database Demo v2.2 | [PhysioNet](https://physionet.org/content/mimic-iv-demo/2.2/) | [ODC Open Database License v1.0 (ODbL)](https://physionet.org/content/mimic-iv-demo/view-license/2.2/) — open access, no PhysioNet credentialing or CITI training required (unlike full MIMIC-IV) | Full demo (100 patients, 26 tables, ~16 MB zipped); excludes free-text clinical notes | De-identified EHR extract from Beth Israel Deaconess Medical Center; lets you prototype against MIMIC-IV's schema before requesting full credentialed access |
| [`eicu_demo/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/eicu_demo) | eICU Collaborative Research Database Demo v2.0.1 | [PhysioNet](https://physionet.org/content/eicu-crd-demo/2.0.1/) | [ODC Open Database License v1.0 (ODbL)](https://physionet.org/content/eicu-crd-demo/view-license/2.0.1/) — open access, no PhysioNet credentialing or CITI training required | Full demo (~137 MB uncompressed): 31 gzip-compressed CSVs plus a SQLite build (`sqlite/eicu_v2_0_1.sqlite3.gz`, 78 MB) | De-identified ICU stays (2,500+) from 20+ US hospitals: vitals, labs, care-plan and APACHE severity data |

---

## A Note on Licensing

The **License / Data Use Policy** column above reflects what each source publisher states as of
this writing. A few things worth knowing:

- This is not legal advice. When a folder's status is "unclear" or "no license file," don't
  redistribute that data outside coursework or claim it as your own — cite the original source
  and, where one exists, follow that source's own terms.
- "Public domain" for CDC/NCHS data (NHANES, BRFSS) means the data itself carries no copyright
  restriction in the US; it does not waive CDC's usual data-quality and citation guidance.
- Datasets sourced from PhysioNet's *demo* projects (MIMIC-IV, eICU) are open access under ODbL,
  but the full, non-demo versions of those databases require PhysioNet credentialing and CITI
  "Data or Specimens Only Research" training — don't assume demo-level access extends to the full
  database.
- If a license changes upstream, this table may lag — check the linked source page for the
  current, authoritative terms before using a dataset outside this course.

---

## Subsampled & Partial Datasets

Everything else in this folder is the complete dataset as published. Two are not, for different reasons: one was cut down to a random sample of rows, the other only has a slice of a much bigger program pulled in. Both are called out explicitly below so nobody mistakes either for the complete dataset.

| Folder | Original size | Size present here | What's missing and why |
|---|---|---|---|
| [`brfss/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/brfss) | 433,323 rows × 350 columns (~1.2 GB unzipped) | 5,000 rows × 350 columns, 5.6 MB (`LLCP2023_sample5000.csv`) | A true random subsample: `df.sample(n=5000, random_state=42)` on the full 2023 file. The 1.2 GB original was too big to keep in the repo, so it was downloaded, sampled, and deleted rather than committed. Re-running the same seed against the CDC's 2023 file reproduces this exact sample. |
| [`nhanes/`](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/nhanes) | The full NHANES program: 12+ two-year survey cycles since 1999, each split into 5 broad components (Demographics, Dietary, Examination, Laboratory, Questionnaire) that in turn span dozens of individual files per cycle (the Laboratory component alone covers 800+ distinct lab tests) | 1 cycle (2017–2018), 1 file (Demographics, `DEMO_J`): 9,254 rows × 46 columns | This isn't a row-level subsample, it's the complete demographics file for one cycle. No exam, lab, diet, or questionnaire file has been pulled for any cycle, and no other year has been downloaded. Everything present is real and unmodified; it's just a narrow slice of what NHANES actually covers. |

---

## 1. Heart Disease (Cleveland)

**File:** `processed.cleveland.data`, 303 rows by 14 columns, no header row. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/heart_disease_cleveland)

**Demographic columns:** `age`, `sex`

**Health columns:** `cp` (chest pain type), `trestbps` (resting blood pressure), `chol` (serum cholesterol), `fbs` (fasting blood sugar over 120 mg/dl), `restecg` (resting ECG results), `thalach` (max heart rate achieved), `exang` (exercise-induced angina), `oldpeak` (ST depression from exercise), `slope` (slope of the peak exercise ST segment), `ca` (number of major vessels seen on fluoroscopy), `thal` (thalassemia test result), and `target` (disease status, 0 to 4; the course notebooks collapse this to 0/1).

Robert Detrano and collaborators put this together in 1988 across four sites: Cleveland Clinic Foundation, the Hungarian Institute of Cardiology, University Hospital Zurich/Basel, and the V.A. Medical Center in Long Beach. The question was whether ordinary, non-invasive clinical measurements could stand in for an angiogram when flagging coronary artery disease. Cleveland's data has the fewest gaps of the four, which is why it's the one almost everyone actually uses, and why this course leans on it in nearly every weekly notebook.

## 2. Pima Indians Diabetes

**File:** `pima-indians-diabetes.data.csv`, 768 rows by 9 columns, no header row. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/pima_diabetes)

**Demographic columns:** every subject is a female of Pima Indian heritage; `age` is recorded per row.

**Health columns:** `pregnancies`, `glucose` (2-hour oral glucose tolerance test), `blood_pressure` (diastolic, mm Hg), `skin_thickness` (triceps skinfold, mm), `insulin` (2-hour serum insulin), `bmi`, `diabetes_pedigree` (a score for diabetes likelihood based on family history), and `outcome` (0/1).

The data comes from the NIDDK's long-running study of the Pima community near Phoenix, Arizona, a population that's been tracked since the 1960s because it has one of the highest recorded rates of type 2 diabetes anywhere. Smith and colleagues used it in 1988 to test whether routine clinical measurements could forecast diabetes onset, and it's been a standard classroom dataset ever since.

## 3. Heart Failure Clinical Records

**File:** `heart_failure_clinical_records_dataset.csv`, 299 rows by 13 columns. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/heart_failure_clinical)

**Demographic columns:** `age`, `sex`

**Health columns:** `anaemia`, `creatinine_phosphokinase` (a muscle-damage enzyme), `diabetes`, `ejection_fraction` (percent of blood the heart pumps out per beat), `high_blood_pressure`, `platelets`, `serum_creatinine`, `serum_sodium`, `smoking`, `time` (days of follow-up), and `DEATH_EVENT`.

Collected at the Faisalabad Institute of Cardiology and the Allied Hospital in Faisalabad, Pakistan, between April and December 2015, from patients who already had heart failure with reduced ejection fraction. Ahmad and colleagues published it first; Chicco and Jurman revisited it in 2020 (*BMC Medical Informatics and Decision Making*) and made the case that two numbers, serum creatinine and ejection fraction, do most of the work in predicting whether a patient survives. That claim is probably why the dataset shows up so often in feature-importance exercises.

## 4. Breast Cancer Wisconsin (Diagnostic)

**File:** `wdbc.data`, 569 rows by 32 columns, no header row. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/breast_cancer_wisconsin)

**Demographic columns:** none besides a patient `id`.

**Health columns:** `diagnosis` (M or B) plus 30 numeric features: 10 measurements (`radius`, `texture`, `perimeter`, `area`, `smoothness`, `compactness`, `concavity`, `concave_points`, `symmetry`, `fractal_dim`), each reported three ways (mean, standard error, and worst value) across the cell nuclei visible in one image.

Dr. William Wolberg at the University of Wisconsin Hospitals collected fine needle aspirate biopsies of breast masses; Street, Wolberg, and Mangasarian built the "Xcyt" program that turned each digitized slide into these shape and texture numbers. The goal was a diagnosis that didn't require surgery. It's held up well: this is still a reliable small classification dataset, clean enough that model performance rarely comes down to data quality rather than modeling choices.

## 5. Snow's Cholera Map

**Files:** `deaths.csv` (250 addresses), `pumps.csv` (8 pumps). · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/snows_cholera_map)

This isn't a per-patient dataset. Each row in `deaths.csv` is a street address with a death count (`Number of deaths`) and a location (`X coordinate`, `Y coordinate`); the 250 addresses here sum to 489 deaths. `pumps.csv` gives pump locations, but the `Pump Name` field is unpopulated in this mirror (every row reads `-999`), so no actual pump names survived into this copy.

**Note:** the Week 1 notebook expects a `Count` column. This file calls it `Number of deaths`, so the notebook will need a rename before it runs against it.

John Snow mapped these deaths during the 1854 cholera outbreak around Broad Street in Soho, London, where several hundred people died within about ten days. Plotting deaths by address showed them clustered tightly around one pump, the argument Snow used against the era's dominant "miasma" theory, which blamed bad air rather than contaminated water. It's a genuinely foundational moment for epidemiology and for the broader idea of mapping data to trace a cause, which is presumably why this course opens with it in Week 1.

## 6. Framingham Heart Study

**File:** `framingham.csv`, 4,240 rows by 16 columns. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/framingham_heart_study)

**Demographic columns:** `male`, `age`, `education`

**Health columns:** `currentSmoker`, `cigsPerDay`, `BPMeds`, `prevalentStroke`, `prevalentHyp`, `diabetes`, `totChol`, `sysBP`, `diaBP`, `BMI`, `heartRate`, `glucose`, and `TenYearCHD` (the target).

Started in 1948 in Framingham, Massachusetts, with 5,209 adults who had no prior history of heart disease or stroke. It's the longest-running cardiovascular cohort study going, later expanded with an Offspring Cohort in 1971 and a Third Generation Cohort in 2002, and it's the study that gave medicine the term "risk factor" in the first place, after investigators showed smoking, cholesterol, blood pressure, and obesity all raised cardiovascular risk. This CSV is a commonly used teaching extract with a single 10-year CHD outcome, which works for both correlation exercises and classification.

## 7. NHANES (2017–2018 Demographics)

**Files:** `DEMO_J.xpt` (original SAS transport format), `DEMO_J_2017-2018.csv` (converted). 9,254 rows by 46 columns. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/nhanes)

**Demographic columns:** `RIAGENDR` (gender), `RIDAGEYR` (age), `RIDRETH1`/`RIDRETH3` (race/ethnicity), `DMDEDUC2`/`DMDEDUC3` (education), `DMDMARTL` (marital status), `DMDHHSIZ` (household size), `INDHHIN2`/`INDFMIN2` (income bracket), `INDFMPIR` (income-to-poverty ratio).

The rest of the columns are survey machinery: `SDDSRVYR` (cycle), `RIDSTATR` (interview/exam status), `WTINT2YR`/`WTMEC2YR` (sample weights), `SDMVPSU`/`SDMVSTRA` (variance strata). NHANES uses a complex multistage sample, not a simple random one, so these weight and strata columns are required for any population-level estimate rather than optional extras.

This file only covers demographics and weights for one two-year cycle. The actual exam results, labs, and questionnaires live in separate component files for the same cycle, joined on `SEQN`.

NHANES traces back to the National Health Examination Survey of the early 1960s and has run as a continuous annual survey since 1999, combining household interviews with an in-person exam and lab work on roughly 5,000 people a year. It's the source behind U.S. growth charts and national diabetes and obesity estimates, and its explicit sampling weights make it a good fit for this course's sampling and confidence-interval weeks.

## 8. BRFSS (2023, subsampled)

**File:** `LLCP2023_sample5000.csv`, 5,000 rows by 350 columns, a random sample (`random_state=42`) of the full 433,323-row file. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/brfss)

**Demographic columns:** `_STATE`, `SEXVAR`, `MARITAL`, `EDUCA`, `_AGE80`, `_RACE`, `INCOME2`

**Health columns (a few of roughly 340):** `GENHLTH` (self-rated general health), `PHYSHLTH`/`MENTHLTH` (poor-health days in the past month), `EXERANY2` (any exercise), `CVDINFR4`/`CVDCRHD4` (heart attack / coronary heart disease history), `DIABETE4`, `SMOKE100`, `_RFHYPE6` (high blood pressure), `_BMI5CAT`. The rest cover chronic conditions, screenings, immunizations, disability, and healthcare access.

BRFSS has been run by the CDC since 1984 and is the largest continuously conducted health survey in the world: an annual phone survey administered state by state to track health behaviors and chronic conditions among US adults, feeding directly into public-health funding decisions. The full 2023 file is about 1.2 GB unzipped with over 400,000 respondents, more than this course needs, so what's here is a fixed random sample of 5,000 rows, enough for the group-comparison work in Week 14 without the full download.

## 9. WHO Life Expectancy

**File:** `Life_Expectancy_Data.csv`, 2,461 rows by 23 columns, covering 156 countries from 2000 to 2015. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/life_expectancy_who)

**Demographic columns:** `Country`, `Continent`, `Year`, `Status` (Developing/Developed), `Population`, `Income_composition_of_resources`, `Schooling`

**Health columns:** `Life_expectancy` (the target), `Adult_Mortality`, `infant_deaths`, `under_five_deaths`, `Alcohol`, `BMI`, `Hepatitis_B`/`Measles`/`Polio`/`Diphtheria` (immunization coverage), `HIV/AIDS`, `thinness 1-19 years`/`thinness 5-9 years`, `percentage_expenditure`/`Total_expenditure`, `GDP`.

**A provenance note:** this file doesn't cleanly match either of the two well-known Kaggle releases of "Life Expectancy (WHO)." The original (`kumarajarshi`) has 2,938 rows and 22 columns with no `Continent` field; a later cleaned version (`lashagoch`) has 2,864 rows across 179 countries. This file lands at 2,461 rows across 156 countries and does include `Continent`, so it's most likely a further-filtered derivative of one of those two rather than an exact copy of either. Worth knowing before citing it as "the WHO dataset" in a project write-up.

It's a secondary compilation drawing on the WHO Global Health Observatory and UN economic data, not an official WHO release, built to study which health, immunization, and economic factors track with a country's life expectancy. What makes it worth including here is that its target is continuous, which nothing else in this folder offers. Week 10's linear regression lecture currently regresses on columns inside the Heart Disease dataset (cholesterol, for instance) rather than a dataset built for regression from the start.

## 10. Diabetes 130-US Hospitals (1999–2008)

**Files:** `diabetic_data.csv` (101,766 rows by 50 columns), `IDS_mapping.csv` (lookup tables decoding `admission_type_id`, `discharge_disposition_id`, and `admission_source_id`). · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/diabetes_130_hospitals)

**Demographic columns:** `race`, `gender`, `age` (10-year bands), `weight` (mostly unrecorded)

**Health columns:** `admission_type_id`, `discharge_disposition_id`, `admission_source_id`, `time_in_hospital`, `num_lab_procedures`, `num_procedures`, `num_medications`, `number_outpatient`/`number_emergency`/`number_inpatient` (prior visit counts), `diag_1`/`diag_2`/`diag_3` (ICD-9 codes), `number_diagnoses`, `max_glu_serum`, `A1Cresult`, 23 individual medication columns (`metformin`, `insulin`, `glipizide`, and so on), `change`, `diabetesMed`, and `readmitted` (the target: no, under 30 days, or over 30 days).

Pulled from the Cerner Health Facts database: de-identified inpatient records from 130 US hospitals and delivery networks, 1999 through 2008, limited to encounters involving a diabetes diagnosis. Strack and colleagues put it together in 2014 (*BioMed Research International*) to check whether measuring HbA1c during a hospital stay lowers the odds of an early readmission. It's a lot bigger and a lot messier than anything else in this folder: missing weight data, ICD-9 codes instead of readable labels, two dozen near-identical medication columns. That makes it a good "real data is messy" exercise, or a fourth project option that isn't just another clean binary classifier.

## 11. Stroke Prediction Dataset

**File:** `healthcare-dataset-stroke-data.csv`, 5,110 rows by 12 columns. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/stroke_prediction)

**Demographic columns:** `gender`, `age`, `ever_married`, `work_type`, `Residence_type`

**Health columns:** `hypertension`, `heart_disease`, `avg_glucose_level`, `bmi`, `smoking_status`, `stroke` (the target, around 5% positive).

This one is published on Kaggle under the name `fedesoriano`, and unlike everything else in this folder, there's no clear record of where the data actually came from or how it was collected. Worth telling students that up front if anyone uses it for a project: not knowing the collection method makes it harder to say what the results actually generalize to. It earns its spot here mostly for the class imbalance. Only about 5% of cases are stroke-positive, which makes it a useful counterexample to the more balanced datasets elsewhere in this folder, good for teaching precision, recall, and ROC-AUC instead of leaning on plain accuracy.

## 12. MIMIC-IV Clinical Database Demo

**Folder:** `mimic_iv_demo/`, 26 tables across `hosp/` (hospital-wide EHR: admissions, diagnoses, labs, prescriptions, microbiology, etc.) and `icu/` (ICU-specific: chart events, inputs/outputs, procedures), all gzip-compressed CSVs. ~16 MB total. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/mimic_iv_demo)

**License:** [ODC Open Database License v1.0](https://physionet.org/content/mimic-iv-demo/view-license/2.2/) — open access. Unlike the full MIMIC-IV database, the demo requires no PhysioNet credentialing or CITI training; anyone can use the files under the license terms.

The Medical Information Mart for Intensive Care (MIMIC)-IV database contains deidentified electronic health records from patients admitted to Beth Israel Deaconess Medical Center in Boston. Access to the full database is restricted to credentialed PhysioNet users who complete human-subjects research training, because it covers hundreds of thousands of real admissions. This demo is an openly-available 100-patient subset with the same 26-table schema as the full database, minus free-text clinical notes, published specifically so instructors and researchers can prototype against MIMIC-IV's structure or run a workshop without going through credentialing first. If a project outgrows the demo, the natural next step is a PhysioNet account, CITI training, and a formal data-use request for the full database at [physionet.org/content/mimiciv](https://physionet.org/content/mimiciv/).

## 13. eICU Collaborative Research Database Demo

**Folder:** `eicu_demo/`, 31 gzip-compressed CSVs plus a SQLite build of the same data (`sqlite/eicu_v2_0_1.sqlite3.gz`). ~137 MB uncompressed — well past every other dataset here (the next largest, Diabetes 130-US Hospitals, is 18 MB), but every individual file is under GitHub's 100 MB per-file limit, so it's included directly. · [Download this folder](https://github.com/UF-AIBHS/aibhs_datasets/tree/main/eicu_demo)

**License:** [ODC Open Database License v1.0](https://physionet.org/content/eicu-crd-demo/view-license/2.0.1/) — open access, same as the MIMIC-IV demo above: no PhysioNet credentialing or CITI training required. Authoritative source: [physionet.org/content/eicu-crd-demo/2.0.1](https://physionet.org/content/eicu-crd-demo/2.0.1/).

The eICU Collaborative Research Database pools ICU data contributed by Philips Healthcare and the MIT Laboratory for Computational Physiology from over 200 US hospitals using the Philips eICU telehealth program. This demo covers 2,500+ ICU stays from 20+ of the larger contributing hospitals: vital signs, care-plan documentation, APACHE severity-of-illness scores, diagnoses, lab results, medications, and nursing assessments, all deidentified to HIPAA Safe Harbor standards. As with MIMIC-IV, the full (non-demo) eICU database requires PhysioNet credentialing; the demo does not, which is what makes it usable for coursework without a data-access request.
