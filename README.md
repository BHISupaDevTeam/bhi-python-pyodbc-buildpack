# Heroku Buildpack: Microsoft ODBC 18 Driver for SQL Server

This buildpack installs the Microsoft ODBC 18 Driver for SQL Server on Heroku, enabling Python applications to connect to SQL Server databases using pyodbc.

## Features

- Microsoft ODBC Driver 18 for SQL Server
- Secure installation with checksum verification
- Compatible with latest pyodbc

## Requirements

1. Add the following buildpacks in this order:

   ```bash
   # Add apt buildpack first
   heroku buildpacks:add --index 1 heroku-community/apt

   # Add Python buildpack second
   heroku buildpacks:add --index 2 heroku/python

   # Add this buildpack third
   heroku buildpacks:add --index 3 https://github.com/BHISupaDevTeam/bhi-python-odbc18-buildpack.git
   ```

2. Create an `Aptfile` in your project root with:

   ```
   unixodbc
   unixodbc-dev
   ```

3. In your `requirements.txt`, ensure you have:
   ```
   pyodbc>=4.0.39
   ```

## Connection String Example For SQLAlchemy

database_uri = 'mssql+pyodbc://username:password@server.database.windows.net/mydatabase?driver=ODBC+Driver+18+for+SQL+Server'

## Security

- All binaries are verified using SHA256 checksums
- Latest stable Microsoft ODBC 18 driver
- Proper file permissions and secure configurations

## Troubleshooting

If you encounter connection issues:

1. Verify your connection string format
2. Ensure all buildpacks are in the correct order
3. Check your database firewall settings allow Heroku IPs

# bhi-python-pyodbc-buildpack
