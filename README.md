# FPGA Traffic Controller 🚦

This project implements a **Verilog-based Traffic Light Controller** using an FPGA and simulates it on **EDA Playground**.

---

## 🔧 Features

- Controls traffic lights for North-South and East-West directions.
- Includes a **priority override system** for emergency vehicles.
- Designed using **Verilog HDL**.
- Simulated using **ModelSim / EPWave** on EDA Playground.

---

## 📁 Files

- `traffic_controller.v` – Main Verilog module.
- `tb.v` – Testbench for simulation.
- `README.md` – Project overview and usage guide.

---

## ▶️ How to Simulate

1. Go to [EDA Playground](https://www.edaplayground.com/).
2. Paste both Verilog files: `traffic_controller.v` and `tb.v`.
3. Select simulator: **ModelSim**.
4. Click **Run**.
5. Click **EPWave** to view the waveform.

---

## 📷 Sample Output

The waveform below shows the clock, reset, and the traffic light states for both directions.

- `clk`: Clock signal
- `reset`: Active high reset at the beginning
- `NS[2:0]`: North-South traffic light signal
- `EW[2:0]`: East-West traffic light signal
- - `NS[2:0]` and `EW[2:0]` represent Green/Yellow/Red signals
- Values like:
  - `3'b100` = Green
  - `3'b010` = Yellow
  - `3'b001` = Red
![waveform png](https://github.com/user-attachments/assets/89a00e4c-8707-4566-b385-a8464ea9cc27)
## 📌 Future Work

- Add emergency vehicle override
- Include pedestrian crossing
- Real-time FPGA implementation

## 👩‍💻 Author

- GANDHAM ANANTHA LAKSHMI  
- 2nd Year B.Tech, Electrical Engineering
