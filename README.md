# FashionHive Contracts

StarkNet contracts for FashionHive - ZK-proof measurements & secure payments. Written in Cairo for scale.

## Overview

FashionHive provides a user-friendly mobile app that allows customers to take accurate body measurements using their smartphones, without needing to visit a tailor in person. Additionally, the platform offers a robust suite of tools for tailors to manage inventory, track orders, handle deliveries, and record measurements. By integrating these essential functions, FashionHive enables a seamless connection between customers and tailors, optimizing the process for both parties and driving the tailoring industry into the digital age.

## Technical Stack

- **Cairo Version**: 2.11.4
- **StarkNet**: Latest stable version
- **Package Manager**: Scarb

## Project Structure

- `src/`: Core contract logic
  - [fashion_hive.cairo](cci:7://file:///Users/macbookpro/Documents/builds/onlydust/fashionhive-contracts/src/fashion_hive.cairo:0:0-0:0): Main contract implementation
- `tests/`: Unit and integration tests

## Getting Started

### Prerequisites

- Install [Scarb](https://docs.swmansion.com/scarb/) (Cairo package manager)

### Building the Project

```bash
scarb build