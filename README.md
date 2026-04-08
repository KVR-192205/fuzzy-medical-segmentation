# 🧠 Fuzzy Medical Image Segmentation (MATLAB)

## 📌 Project Overview
This project performs medical image segmentation using **Fuzzy C-Means (FCM)** clustering in MATLAB.

We apply fuzzy logic to segment a **chest X-ray image** into meaningful regions for analysis.

---

## 🏥 Problem Statement
Medical images like X-rays contain complex intensity variations.  
Traditional segmentation methods fail to accurately separate regions.

This project uses **Fuzzy C-Means clustering** to:
- Handle uncertainty
- Improve segmentation accuracy
- Identify different tissue regions

---

## ⚙️ Methodology

### Step 1: Image Input
- Load chest X-ray image

### Step 2: Preprocessing
- Convert to grayscale
- Enhance contrast
- Reduce noise using Gaussian filtering

### Step 3: Fuzzy C-Means (FCM)
- Convert image into vector form
- Apply clustering (3 clusters)
- Assign pixels based on highest membership

### Step 4: Visualization
- Segmented grayscale image
- Colored segmentation output

---

## 📊 Results

- Successfully segmented X-ray into regions:
  - Dark (lungs)
  - Medium (soft tissue)
  - Bright (bones)

---

## 🛠️ Technologies Used

- MATLAB
- Fuzzy Logic
- Fuzzy C-Means Clustering
- Image Processing Toolbox

---

## 📂 Files

- `xray_image.m` → Main MATLAB script
- `Chest_Xray_PA_3-8-2010_inverted.png` → Input medical image

---

## 🚀 How to Run

1. Open MATLAB
2. Place files in same folder
3. Run:

```matlab
xray_image
