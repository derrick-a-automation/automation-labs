$token = "YOUR_GITHUB_TOKEN_HERE"

$headers = @{
    "Authorization" = "Bearer $token"
    "Accept"        = "application/vnd.github+json"
}

# The URI should generally point to the API endpoint, not the web URL
$uri = "https://api.github.com/user/repos"

$response = Invoke-RestMethod -Uri $uri -Method Get -Headers $headers

# View the high-level details of the repo
$response | Select-Object name, full_name, description, visibility, stargazers_count | Format-List