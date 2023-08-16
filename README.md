# Load Up Sitting

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Ruby version: `3.2.1`
- Rails version: `7.0.7`
- Database: `PostgreSQL`

### Installation

1. Clone the repository: `git clone https://github.com/mybuddyandrew/load_up_sitting.git`
2. Navigate to the project directory: `cd load_up_sitting`
3. Install the required gems: `bundle install`
4. Set up the database: `rails db:create && rails db:migrate`
5. Seed the database with sample data: `rails db:seed`
6. Run the server: `rails server`

### Gems and Dependencies

Here is a list of critical gems and dependencies used in the project:

- `pg`: PostgreSQL database
- `puma`: Web server
- `redis`: In-memory data structure store
- `stimulus-rails`: Front-end framework
- `tailwindcss-rails`: CSS framework
- `turbo-rails`: Hotwire turbo for Rails

### Pricing Engine

The application includes a pricing engine that calculates the cost of service based on the type of animal and hours requested. The engine uses the following logic:

- Base charge: $20
- Additional charge per hour for dogs: $10
- Additional charge per hour for cats: $5

### How to Run the Test Suite

To execute the test suite, run the following commands:

```
# Run unit tests
rails test

# Run system tests (feature tests)
rails test:system
```

### Seeding the Database

You can populate the database with sample data by running the seed file:

```
rails db:seed
```

The seed file contains predefined bookings and other data to assist with development and testing.

## Future Ideas

- **User Management and Roles**: Implementation of a robust user management system with different roles and permissions.
- **Landing Page**: Design and development of an attractive and informative landing page for the application.
- **Mailers**: Integration of mailers to notify users about bookings, updates, and other relevant information.
