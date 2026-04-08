# X-ray Image Segmentation using ANFIS

## 📌 Project Overview

This project uses **ANFIS (Adaptive Neuro-Fuzzy Inference System)** to segment chest X-ray images.
The system classifies image pixels into different intensity regions such as **dark, medium, and bright**, helping in identifying structures like lungs and bones.

---

## 🎯 Objective

To apply intelligent fuzzy learning (ANFIS) for **automatic medical image segmentation**.

---

## ⚙️ Methodology

### 1. Image Input

* A chest X-ray image is loaded into MATLAB

### 2. Preprocessing

* Convert image to grayscale (if needed)
* Convert pixel values to double (range 0 to 1)

### 3. Data Preparation

* Image is converted into a 1D pixel vector
* Sample pixels are selected for training

### 4. ANFIS Training

* Input: pixel intensity
* Output: label (dark = 0, medium = 0.5, bright = 1)
* ANFIS learns fuzzy rules automatically

### 5. Segmentation

* Trained ANFIS is applied to all pixels
* Output is reshaped back into image form

---

## 🧠 Key Concept

ANFIS combines:

* Fuzzy Logic (human-like reasoning)
* Neural Networks (learning from data)

👉 It automatically learns how to classify pixel intensities.

---

## 📊 Output

* Segmented X-ray image
* Regions divided into:

  * Dark (lungs)
  * Medium (soft tissue)
  * Bright (bones)

---

## 🛠️ Tools Used

* MATLAB Online
* Fuzzy Logic Toolbox

---

## 🚀 How to Run

1. Open MATLAB
2. Place the image file in the same folder
3. Run:

```matlab
anfis_xray
```

---

## 📌 Applications

* Medical image analysis
* Lung region detection
* Computer-aided diagnosis systems

---

## 👨‍💻 Author

Vinay Reddy Kundavaram
