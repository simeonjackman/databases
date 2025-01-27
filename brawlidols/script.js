async function fetchUserData() {
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

async function fetchFightData() {
    try {
        const response = await fetch('http://localhost:3000/api/fights');
        const data = await response.json();
        buildFightTable0(data);
        buildFightTable1(data);
        buildFightTable2(data);
    } catch (error) {
        console.error('Error fetching data:', error);
    }
}

async function fetchFightersData() {
    try {
        const response = await fetch('http://localhost:3000/api/fighters');
        const data = await response.json();
        buildFightersTable(data);
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

function buildFightTable0(data){
    const tableBody = document.querySelector('#fight-data-table0 tbody');
    tableBody.innerHTML = ''; // Clear existing rows
    data.forEach(row => {
        const tr = document.createElement('tr');
    
        tr.innerHTML = `
            <td>${row.fight_id}</td>
            <td>${row.player1} vs. ${row.player2} - ${row.winner} won</td>
        `;
        tableBody.appendChild(tr);
    });
}

function buildFightTable1(data){
    const tableBody = document.querySelector('#fight-data-table1 tbody');
    tableBody.innerHTML = ''; // Clear existing rows
    data.forEach(row => {
        const tr = document.createElement('tr');
    
        tr.innerHTML = `
            <td>${row.fight_id}</td>
            <td>${row.player1}</td>
            <td>${row.player2}</td>
            <td>${row.winner}</td>
        `;
        tableBody.appendChild(tr);
    });
}

function buildFightTable2(data){
    const tableBody = document.querySelector('#fight-data-table2 tbody');
    tableBody.innerHTML = ''; // Clear existing rows
    data.forEach(row => {
        const tr = document.createElement('tr');
    
        tr.innerHTML = `
            <td>${row.fight_id}</td>
            <td>${row.player1_id}</td>
            <td>${row.player2_id}</td>
            <td>${row.winner_id}</td>
        `;
        tableBody.appendChild(tr);
    });
}

function buildFightersTable(data){
    const tableBody = document.querySelector('#fighters-data-table tbody');
    tableBody.innerHTML = ''; // Clear existing rows
    data.forEach(row => {
        const tr = document.createElement('tr');
    
        tr.innerHTML = `
            <td>${row.username}</td>
        `;
    
        tableBody.appendChild(tr);
    });
}

async function createUser(event) {
    event.preventDefault();
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

// Populate dropdowns with users
async function loadUsers() {
    try {
        const response = await fetch('http://localhost:3000/api/user');
        const users = await response.json();
        console.log(users);

        const player1Dropdown = document.getElementById('player1');
        const player2Dropdown = document.getElementById('player2');
        const winnerDropdown = document.getElementById('winner');

        let first = true;

        users.forEach((user) => {
            if(first == true){
                const option1 = new Option(user.username, user.id);
                player1Dropdown.add(option1.cloneNode(true));
                first = false;
            } else{
                const option1 = new Option(user.username, user.id);
                player1Dropdown.add(option1.cloneNode(true));
                const option2 = new Option(user.username, user.id);
                player2Dropdown.add(option2.cloneNode(true));
                
            }
            
            
            const option3 = new Option(user.username, user.id);
            winnerDropdown.add(option3.cloneNode(true));
        });

        // Add "Draw" option for winner
        const drawOption = new Option('Draw', '');
        winnerDropdown.add(drawOption);
    } catch (error) {
        console.error('Error loading users:', error);
    }
}

async function createFight(event){
    event.preventDefault();

    const player1_id = document.getElementById('player1').value;
    const player2_id = document.getElementById('player2').value;
    const winner_id = document.getElementById('winner').value || null;
    const duration = document.getElementById('duration').value || null;
    const player1_score = document.getElementById('player1_score').value || 0;
    const player2_score = document.getElementById('player2_score').value || 0;

    const fightData = {
        player1_id,
        player2_id,
        winner_id,
        duration,
        player1_score,
        player2_score,
    };
    try {
        const response = await fetch('http://localhost:3000/api/fights', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(fightData),
        });

        const result = await response.json();
        if (response.ok) {
            alert('Fight added successfully!');
            location.reload(); // Refresh the page to display updated data
        } else {
            alert(`Error: ${result.error}`);
        }
    } catch (error) {
        console.error('Error adding fight:', error);
    }
}
