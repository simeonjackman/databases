async function fetchData() {
    try {
        const response = await fetch('http://localhost:3000/api/data');
        const data = await response.json();

        const tableBody = document.querySelector('#data-table tbody');
        tableBody.innerHTML = ''; // Clear existing rows

        data.forEach(row => {
            const tr = document.createElement('tr');
        
            tr.innerHTML = `
                <td>${row.username}</td>
                <td>${row.xp}</td>
                <td>${row.coins}</td>
                <td>${row.level}</td>
            `;
        
            tableBody.appendChild(tr);
        });
    } catch (error) {
        console.error('Error fetching data:', error);
    }
}

// Fetch data on page load
fetchData();