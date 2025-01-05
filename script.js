async function fetchData() {
    try {
        const response = await fetch('http://localhost:3000/api/user');
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
    const tableBody = document.querySelector('#rich-data-table tbody');
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
    const tableBody = document.querySelector('#xp-data-table tbody');
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

async function createUser(event) {
    event.preventDefault();
    console.log("triggered")
    const username = document.querySelector('#username').value;
    const brawlpass_xp = document.querySelector('#brawlpass_xp').value || 0;
    const coins = document.querySelector('#coins').value || 0;
    const level = document.querySelector('#level').value || 0;

    try {
        const response = await fetch('http://localhost:3000/api/users', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ username, brawlpass_xp, coins, level })
        });
        if (response.ok) {
            alert('User created successfully!');
            fetchData(); // Refresh the table
            document.querySelector('#user-form').reset(); // Clear the form
        } else {
            const errorData = await response.json();
            alert('Error creating user: ' + errorData.error);
        }
    } catch (error) {
        console.error('Error creating user:', error);
    }
}