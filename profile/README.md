<p align="center">
  <img src=".logos/github-banner-photo-style.svg" alt="SmallWorlds Forever" width="800">
</p>

# SmallWorlds Forever

An open-source re-implementation of the SmallWorlds online virtual world.

This repository contains the source code for the different parts of our application.

## Organization Structure

- **[smallworlds-backend](https://github.com/SmallWorlds-Forever/sw-backend)** - Laravel-based backend API server
- **[smallworlds-client](https://github.com/SmallWorlds-Forever/sw-client)** - Contains the client-side application to run the game (Electron/Vue.js). This is the desktop application that users will install to play the game.
- **[smallworlds-database](https://github.com/SmallWorlds-Forever/sw-database)** - Contains SQL scripts for database setup and modifications.
- **[smallworlds-infrastructure](https://github.com/SmallWorlds-Forever/sw-infrastructure)** - Infrastructure as code and deployment configurations
- **[smallworlds-streaming](https://github.com/SmallWorlds-Forever/sw-streaming)** - Contains the server application (Red5/Java). This handles real-time communication with data streaming and WebSocket connections.

## Getting Started

To get started with development, clone this repository and navigate to the specific project you want to work on. Each project directory contains its own set of instructions for setup and development.

For example, to set up the backend:
```sh
cd Backend
composer install
cp .env.example .env
php artisan key:generate
# Follow additional setup steps in sw-backend/README.md
```

## Contributing
We welcome contributions from the community! Please read our [CONTRIBUTING.md](CONTRIBUTING.md) file for guidelines on how to contribute to the project.
## License
This project is licensed under the GNU Affero General Public License v3.0 (AGPLv3). This means that if you modify and use this software, especially on a network server, you must make the source code of your modifications available to users of that server. See the [LICENSE](LICENSE) file for details.
## Reversion Engineering Notice
This project is a re-implementation of the SmallWorlds online virtual world, which has been discontinued. The original SmallWorlds application and its assets are proprietary and owned by their respective rights holders. This re-implementation is intended for educational and preservation purposes only. Users are responsible for ensuring they have the legal right to use any original SmallWorlds assets or data in conjunction with this project.

*Note: Throughout the codebase, you may encounter references to "SWX" - these are legacy identifiers from our development history and community involvement.*

Please respect intellectual property rights and do not distribute or use proprietary assets without permission from the original rights holders.

## Thank You
This has been a personal project of mine since 2021, and I appreciate the support and interest from the community. Thank you for being part of this journey! 
