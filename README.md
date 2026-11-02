# GoldenRoute (गोल्डनरूट)

> **Real-Time Emergency Patient Transfer & Critical Care Allocation Network for Delhi-NCR**

GoldenRoute is a clinical decision-support and emergency dispatch platform engineered to coordinate urgent inter-facility patient transfers and real-time ICU bed reservations across Delhi-NCR.

---

## Key Features

### 1. Dual Operational Stations
- **Referring Facility Console (`dispatch.html`)**:
  - **Step 1: Patient Triage & Intake**: Acuity rating (Code Red / Amber / Yellow), condition selection (ARDS, STEMI, Hemorrhagic Stroke, Polytrauma), live editable departure vitals ($SpO_2$, BP, HR, GCS) with dynamic clinical status notes, and required ICU equipment matching.
  - **Step 2: Intelligent Hospital Matching**: Ranked hospital beds (Max Hospital Shalimar Bagh, Saroj Super Speciality, Dr. B.S. Ambedkar, Action Balaji, Fortis) with real-time transit distance and confirmed equipment compatibility.
- **Receiving ICU Station (`dispatch.html`)**:
  - **Live GPS Road Tracking**: Calibrated Leaflet ambulance tracking along the Outer Ring Road corridor with realistic physical transit speed and continuous smooth road navigation.
  - **Bed Reservation & Bed-Hold Timer**: 25-minute hold timer for incoming transfers with real-time state tracking.
  - **Dynamic ICU Arrival Checklist**: Automatically updates with clinically realistic protocols tailored to the transfer's selected equipments (mechanical ventilation circuit checks, inotrope syringe pump handover, blood rapid infusers, emergency airway trays).
  - **Liquid-Glass Emergency Reassign Dialog**: Crystal-clear liquid-glass modal with depth-of-field background blur allowing instant reassignment to walk-in emergency patients with automatic ambulance rerouting to primary backup facilities.

### 2. High-Performance Public Landing Page (`index.html`)
- Interactive canvas with beating clinical emblem, arterial road network visualization, live IST clock, and direct station portals.

---

## File Structure

```text
.
├── index.html              # GoldenRoute public landing page & station portal
├── dispatch.html           # Core dispatch console (Referring Facility & Receiving ICU dual views)
├── assets/                 # Brand emblems, logos, and arterial visual assets
│   ├── goldenroute-icon.png
│   ├── goldenroute-logo.png
│   ├── arterial_clean.mp4
│   └── ...
├── restore_standard.sh     # Quick verification & restoration script
├── .gitignore              # Ignores OS artifacts and large archives
└── README.md               # Project documentation & setup instructions
```

---

## Getting Started Locally

GoldenRoute is built with standard web technologies (HTML5, Tailwind CSS, Leaflet.js, and Inter typography) and requires zero build dependencies.

### Option 1: Direct File Opening
Double-click `index.html` or `dispatch.html` to open directly in any modern web browser.

### Option 2: Local HTTP Server (Recommended)
Using Python:
```bash
# Python 3
python3 -m http.server 8000
```

Using Node.js:
```bash
npx serve .
```

Then navigate to `http://localhost:8000` in your browser.

---

## Clinical Palette & Design System

- **Clinical Teal (`#0C6277`)**: Primary actions, active navigation, and confirmed reservations.
- **Ink Dark (`#0F172A`)**: High-contrast, legible clinical headings.
- **Paper Background (`#F8FAFC`)**: Calming, low-fatigue workspace canvas.
- **Stat Red (`#BE123C`)** & **Urgent Amber (`#EA580C`)**: Immediate triage visual indicators.
- **Liquid Glass**: Specular perimeter highlights and frosted blur (`blur(14px)`) for non-obstructive overlays.
