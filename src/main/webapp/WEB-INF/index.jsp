Do i add this code?: <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>API Results</title>
</head>
<body>
    <h1>API Results</h1>
    <div id="results"></div>



    <script>
        // Make a request to the API
        fetch('http://localhost:8081/hello?message=Hi')
            .then(response => response.json())
            .then(data => {
                // Display the results on the page
                const resultsDiv = document.getElementById('results');
                resultsDiv.innerHTML = JSON.stringify(data);
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    </script>
</body>
</html>
 