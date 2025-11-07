<p align="center">
  <img src=".logos/github-banner-photo-style.svg" alt="SmallWorlds Forever" width="800">
</p>

# SmallWorlds Forever

An open-source re-implementation of the SmallWorlds online virtual world.

This organization hosts the source code for all components of the SmallWorlds Forever project.

## Organization Structure

- **[smallworlds-backend](https://github.com/SmallWorlds-Forever/sw-backend)** - Laravel-based backend API server
- **[smallworlds-client](https://github.com/SmallWorlds-Forever/sw-client)** - Client-side desktop application (Electron/Vue.js) that users install to play the game
- **[smallworlds-database](https://github.com/SmallWorlds-Forever/sw-database)** - Database schemas, migrations, and SQL scripts
- **[smallworlds-infrastructure](https://github.com/SmallWorlds-Forever/sw-infrastructure)** - Infrastructure as code and deployment configurations
- **[smallworlds-streaming](https://github.com/SmallWorlds-Forever/sw-streaming)** - Real-time streaming server (Red5/Java) for data streaming and WebSocket connections

## Getting Started

To get started with development, clone the repository you want to work on from the organization. Each repository contains its own setup instructions and documentation.

For example, to set up the backend:
```sh
git clone https://github.com/SmallWorlds-Forever/sw-backend.git
cd sw-backend
composer install
cp .env.example .env
php artisan key:generate
# Follow additional setup steps in the repository's README.md
```

## Contributing

We welcome contributions from the community! Please read our [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute to the project.
## License

This project is licensed under the GNU Affero General Public License v3.0 (AGPLv3). If you modify and use this software, especially on a network server, you must make the source code of your modifications available to users of that server. See the [LICENSE](LICENSE) file for details.

## Reverse Engineering Notice

This project is a re-implementation of the discontinued SmallWorlds online virtual world. The original SmallWorlds application and its assets are proprietary and owned by their respective rights holders. This re-implementation is intended for educational and preservation purposes only. Users are responsible for ensuring they have the legal right to use any original SmallWorlds assets or data in conjunction with this project.

*Note: Throughout the codebase, you may encounter references to "SWX" - these are legacy identifiers from our development history and community involvement.*

Please respect intellectual property rights and do not distribute or use proprietary assets without permission from the rights holders.

## Thank You

This has been a personal project since 2021, and we appreciate the support and interest from the community. Thank you for being part of this journey! 
