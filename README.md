# Meaningless: On-Demand Logistics Platform

### Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [ER Model](#er-model)
- [Working Demo](#working-demo)
- [Architecture](#architecture)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)

---

## Overview

**Meaningless** is an on-demand logistics platform designed to connect users with drivers for real-time booking and tracking services. The platform is built with a **Flutter** app for users and a **web-based admin panel** for managing bookings, drivers, and analytics.

This project has key features implemented for a basic logistics solution. Future versions will integrate scalability enhancements like load balancing, microservices, and real-time data caching.

---

## Features

### User App (Flutter):
- **Booking Management**: Users can book vehicles, specifying ,vehicle, pickup and drop-off locations.
- **Real-Time Tracking**: Live tracking of orders.
- **Price Estimation**: Users receive upfront price estimates based on distance and vehicle type.

### Admin Panel (Web):
- **Fleet Management**: Admins can monitor and manage vehicles and drivers.
- **Booking Monitoring**: Admins can track active bookings and view booking history.
- **Customer Management**: Admins can manager customers as well
---

## Tech Stack

### Frontend:
- **Flutter**: User app
- **React.js**: Admin panel

### Backend:
- **Node.js**
- **Express.js**
- **MongoDB**: NoSQL database for pricing and other unstructured data
- **Firebase**: For push notifications
- **JWT**: For secure user sessions

---
## ER Model
- The following ER Model outlines the key entities and their relationships in the on-demand logistics platform. Each entity plays a specific role in handling users, drivers, vehicles, bookings, and tracking, ensuring seamless communication between different components.
![erFinal](https://github.com/user-attachments/assets/c7313dc9-efd2-4fdf-a005-343ba7c05a11)
You can find more details about ER Model in [ER Model Document](https://docs.google.com/document/d/1L-JsiRXoZfHooq6RGm6aCdmI_cKQKWjOL48TMunbImA/edit?usp=sharing).
## Architecture

The platform is designed with future scalability in mind. :

1. **Global Load Balancer**: To distribute traffic across backend services.
2. **Microservices**: Independent services for booking, pricing, tracking, and job assignment.
3. **Kafka-Based Job Assignment**: For efficient distribution of jobs to drivers.
4. **Redis Caching**: To store real-time GPS and driver availability data, reducing database load.
5. **Sharded Databases**: For better performance and scalability.

![architectureFullNFinal](https://github.com/user-attachments/assets/6520d7b6-6655-414b-b565-45994455e80c)

You can find more details about the architecture in the [Architecture Solution Document](https://docs.google.com/document/d/1qslSeR_-mT1K6xMu9GhbkK2hiR95shcbWR4ueOSTXlY/edit?usp=sharing).

---

## Working Demo

https://github.com/user-attachments/assets/d15c2b0b-2a03-446f-9fef-528ffff90d07

---
## Setup and Installation

### Prerequisites:
- **Flutter SDK** installed for the mobile app
- **Node.js** installed for the web admin panel
- **MongoDB** databases running locally or accessible

### Installation Steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/anurag-crypto/meaningless.git
    cd meaningless
    ```

2. **Flutter Setup** (User App):
    - Navigate to the `app/` directory:
        ```bash
        cd app/
        flutter pub get
        flutter run
        ```

3. **Admin Panel Setup** (Web):
    - Navigate to the `admin/view` directory:
        ```bash
        cd admin/view
        npm install
        npm start
        ```

4. **Backend Setup**:
    - Navigate to the `admin/` directory:
        ```bash
        cd admin/
        npm install
        ```
    - Create a .env file in your admin/ and add the following environment variables:
         ```bash
         MongoDB_URL = YOUR_MONDO_DB_URL
         PORT = 8000
         ```
    - Run the server
         ```bash
         npm run server
         ```
---

## Usage

1. **Admin Panel**: Access the web panel by navigating to `localhost:3000` after starting the admin service. 
   - Admins can log in, manage bookings, fleet, drivers and customers.

2. **User App**: Run the Flutter app on a connected device or emulator using the `flutter run` command.

---



