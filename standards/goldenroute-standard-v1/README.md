# GoldenRoute Standard Baseline (v1.0)
**Saved on:** 2026-11-01 23:01 IST  
**Git Tag:** `v1.0-standard`  
**Git Commit:** Baseline Standard Release  

---

## 1. What is Saved in this Standard Version
This folder contains the complete, verified, production-ready baseline of **GoldenRoute**:
1. **`index.html`**:
   - Ultra-refined landing page with dynamic arterial dither canvas
   - Liquid-glass navigation header (`bg-paper/60 backdrop-blur-xl border-b border-softBorder/80`)
   - High-contrast clinical typography (WCAG AAA compliant)
   - Zero tick (`✓`) or cross (`✕`) symbols
2. **`dispatch.html`**:
   - Complete 3-step clinical transfer flow:
     - **Step 1**: Emergency Triage & Resource Allocation (syndrome pills, equipment chips with dynamic indicator dots, vitals cards)
     - **Step 2**: Available ICU Beds (ranked by transit time and equipment compatibility, live Leaflet corridor map with clinical zoom controls)
     - **Step 3**: Active Transfer Coordination (real-time telemetry transit tracker, ICU arrival preparation checklist, bedside override modal)
   - Consistent liquid-glass station navigation header
   - Zero tick/cross icons across all modals, checklists, and buttons
3. **`assets/`**:
   - High-resolution SVG and PNG icons, including `goldenroute-icon.png` and arterial dither frame samples.

---

## 2. Integrity Verification
- `index.html` SHA256: `cf6891226ffabdf00d96adf72ba3dbff9b2f3abdf3b51be91c6939ee696f7ad9`
- `dispatch.html` SHA256: `d1260ae370d911f19d8641c3b13fd2017ccdd4fe573c7f294e15c0faa5e82cfa`

---

## 3. How to Restore this Standard Version
Anytime you make experiments or changes and want to revert back to this exact standard version, you can do any of the following:

### Option A: Using the Restore Script
Run from the project root:
```bash
./restore_standard.sh
```

### Option B: Using Git
```bash
git checkout v1.0-standard -- index.html dispatch.html
```

### Option C: Using the Zip Archive
Unpack `goldenroute-standard-v1.zip` in `/Users/paarth/code`.
