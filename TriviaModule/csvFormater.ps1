$csvData = Import-Csv "../Data.csv"
$newCsvData = @()

foreach ($row in $csvData) {
    $first = $row.First
    $second = $row.Second
    $flast = $row.Flast
    $fsecond = $row.Fsecond
    $mail = $first + $flast  + '@company.com'
    $row.mail = $mail
    $phone = $row.Phone
    $country = $row.Country
    $row.dial = '+' + $country + $phone
    $row.samAccountName = $first[0] + $second
    $row.userPrincipalName = $first + $flast + $fsecond + '@internal-company.com'

    $newCsvData += $row
}

$newCsvData | Export-Csv -Path "../FormatedData.csv" -NoTypeInformation