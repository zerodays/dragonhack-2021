# Dragonhack 2021 - Zero Waste

We developed a NFC-enabled smart scale integrated into a user-friendly web interface for zero waste shops. The scale automatically identifies detected containers and calculates container’s contents weight (without the container itself). This reduces end user's workload by 50% while encouraging zero waste lifestyle through an engaging mobile app. User can scan a container to view its reuse statistics as well as one’s own environmental impact.

## Submission video

[![Dragonhack 2021 video](https://img.youtube.com/vi/qf5JxDB0clQ/0.jpg)](https://www.youtube.com/watch?v=qf5JxDB0clQ)

## Project structure

- [`zero_waste_backend`](https://github.com/zerodays/dragonhack-2021/tree/master/zero_waste_backend) - Django backend
- [`zero_waste_frontend`](https://github.com/zerodays/dragonhack-2021/tree/master/zero_waste_frontend) - Mobile and web app build using Flutter
- `zero_waste_proto` - Protobuf definitions for communication between backend and frontend
- [`zero_waste_scale`](https://github.com/zerodays/dragonhack-2021/tree/master/zero_waste_scale) - Software running on smart scale
