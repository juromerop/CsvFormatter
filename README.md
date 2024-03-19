# CSV Formatter

This PowerShell script (`csvFormatter.ps1`) is designed to format a CSV file containing user information according to specific rules for the `mail`, `Dial`, `SamAccountName`, and `UserPrincipalName` fields.

## Usage

1. **Input CSV File**: Place the CSV file you want to format in the same directory as the script. Ensure that the CSV file has columns named `First`, `Second`, `Flast`, `Fsecond`, `Phone`, and `Country`.

2. **Run the Script**: Open a PowerShell terminal and navigate to the directory (`TriviaModule`). Run the script using the following command:

   ```powershell
   ./csvFormatter.ps1
   ```

3. **Output**: The script will generate a formatted CSV file named `FormatedData.csv` in the same directory, containing the formatted data according to the specified rules.

## Formatting Rules

- **Mail**: The `mail` field is formatted as `first+flast@company.com`.
- **Dial**: The `Dial` field is formatted as `+country+phone`.
- **SamAccountName**: The `SamAccountName` field is formatted as `first_letter_of_first+second`.
- **UserPrincipalName**: The `UserPrincipalName` field is formatted as `first+flast+fsecond@internal-company.com`.

## Example

For example, given the following input CSV data:

| First    | Second  | Flast   | Fsecond | Phone      | Country |
|----------|---------|---------|---------|------------|---------|
| Juan     | Pablo   | Garzon  | Parra   | 1234567890 | 1       |
| Pepe     | Pablo   | Perez   | Perez   | 9876543210 | 2       |

The script will format this data as follows:

| First    | Second  | Flast   | Fsecond | Phone      | Country | mail                  | dial        | SamAccountName | UserPrincipalName        |
|----------|---------|---------|---------|------------|---------|-----------------------|-------------|----------------|--------------------------|
| Juan     | Pablo   | Garzon  | Parra   | 1234567890 | 1       | JuanGarzon@company.com| +11234567890| JPablo         | JuanGarzonParra@internal-company.com |
| Pepe     | Pablo   | Perez   | Perez   | 9876543210 | 2       | PepePerez@company.com | +29876543210| PPablo         | PepePerezPerez@internal-company.com  |

---