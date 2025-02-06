```markdown
# RFID-Based Automated Fuel Management System

A secure, automated system for fuel dispensing and balance tracking using RFID authentication and GSM communication.

## Description
This project manages fuel distribution through RFID card authentication, sends SMS notifications for transactions and fuel levels, and integrates with sensors/motors for gate control. Designed for vehicle fleets or stations, it supports multiple users with individual balances stored in EEPROM. Features include PIN-based access, real-time balance updates, and alerts for low/high fuel levels.

## Features
- **RFID Authentication**: Scans registered cards to authorize users.
- **GSM Integration**: Sends SMS alerts for balance updates, refill confirmations, and fuel-level warnings.
- **EEPROM Storage**: Tracks individual user balances (up to 5 accounts).
- **Fuel-Level Monitoring**: Detects high/low levels and triggers alerts.
- **Motorized Gate Control**: Opens/closes gates via servo motor.
- **Keypad Input**: Supports PIN entry for secondary authentication.
- **Arduino & Proton Basic Code**: Combines RFID/GSM logic (Arduino) and LCD/motor control (Proton).

## Pin Mapping
### Arduino Components
| Component       | Pin  |
|-----------------|------|
| RFID RC522 (SS) | 10   |
| RFID RC522 (RST)| 9    |
| Button A        | 2    |
| Button B        | 3    |
| Button C        | 8    |
| SoftwareSerial  | 4, 5 |

### Proton Basic Components
| Component       | Pin       |
|-----------------|-----------|
| LCD (RS, EN, D4)| B.2, B.3, B.4 |
| Motor           | A.0       |
| Fuel Pump       | A.5       |
| IR Sensor       | B.0       |
| Level Sensors   | C.4, C.5  |

*Note: Pin assignments may vary depending on hardware setup. Diagrams (if referenced) should be verified against actual connections.*

## Code Structure
- **`Fuelsys_Arduino.ino`**  
  Handles RFID scanning, balance management (via EEPROM), SMS alerts (GSM), and communication with the Proton Basic system.  
  Key functions:  
  - `recharge()`: Adds 20 TK to a user’s balance.  
  - `update_m()`: Deducts fuel cost from balance after dispensing.  
  - `send_SMS()`: Notifies users/admins via SMS.  

- **`fuelsys.bas`**  
  Manages LCD display, motor/pump control, keypad input, and fuel-level sensors.  
  Key routines:  
  - `fuel_fill()`: Calculates cost and dispenses fuel.  
  - `pass_mode()`: Validates PIN entries.  
  - `gate_open()/gate_lock()`: Controls gate servo motor.  
```