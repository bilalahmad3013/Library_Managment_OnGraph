# README
# My Awesome Ruby on Rails Application

Welcome to the documentation for my Ruby on Rails application hosted on AWS.

## Application Details

- Ruby version: 3.0.2
- Rails version: 7.0.1

## System Dependencies

This application relies on AWS services for hosting, so ensure you have an AWS account and necessary services set up.

## Configuration

To configure this application, you'll need to set environment variables for AWS services and any application-specific configurations.

## Database Setup

This application uses sqlite3 as the database. To create and initialize the database, follow these steps:


# Create the database
rails db:create

# Run database migrations
rails db:migrate

# Seed the database (if applicable)
rails db:seed
