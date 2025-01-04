async function fetchData() {
    try {
        const response = await fetch('http://localhost:3000/api/data');
        const data = await response.json();
        buildOverviewTable(data);
    } catch (error) {
        console.error('Error fetching data:', error);
    }
}

async function fetchRichData() {
    try {
        const response = await fetch('http://localhost:3000/api/rich');
        const data = await response.json();
        buildRichTable(data);
    } catch (error) {
        console.error('Error fetching data:', error);
    }
}

async function fetchXPData() {
    try {
        const response = await fetch('http://localhost:3000/api/xp');
        const data = await response.json();
        buildXPTable(data);
    } catch (error) {
        console.error('Error fetching data:', error);
    }
}

function buildOverviewTable(data){
    const tableBody = document.querySelector('#data-table tbody');
    tableBody.innerHTML = ''; // Clear existing rows
    data.forEach(row => {
        const tr = document.createElement('tr');
    
        tr.innerHTML = `
            <td>${row.id}</td>
            <td>${row.username}</td>
            <td>${row.xp}</td>
            <td>${row.coins}</td>
            <td>${row.level}</td>
        `;
    
        tableBody.appendChild(tr);
    });
}

function buildRichTable(data){
    const tableBody = document.querySelector('#data-table tbody');
    tableBody.innerHTML = ''; // Clear existing rows
    data.forEach(row => {
        const tr = document.createElement('tr');
    
        tr.innerHTML = `
            <td>${row.username}</td>
            <td>${row.coins}</td>
        `;
        tableBody.appendChild(tr);
    });
}

function buildXPTable(data){
    const tableBody = document.querySelector('#data-table tbody');
    tableBody.innerHTML = ''; // Clear existing rows
    data.forEach(row => {
        const tr = document.createElement('tr');
    
        tr.innerHTML = `
            <td>${row.username}</td>
            <td>${row.xp}</td>
        `;
        tableBody.appendChild(tr);
    });
}