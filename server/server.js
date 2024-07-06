import express from 'express';
import mysql from 'mysql';
import cors from 'cors'; 

const app = express();

// app.use(cors());
// 
// app.use(cors({
//     origin: 'http://127.0.0.1:5500/'
// }));

app.use(cors({
    origin: 'http://127.0.0.1:5500' // Adjust to match your frontend origin
}));


const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'kk_music'
});

con.connect((err) => {
    if (err) {
        console.log('Error connecting to database:', err);
        return;
    }
    console.log('Connected to the database');
});

// API endpoint to fetch songs from MySQL
app.get('/fetch', (req, res) => {
    const query = 'SELECT * FROM songs';
    con.query(query, (err, result) => {
        if (err) {
            console.log('Error fetching songs:', err);
            res.status(500).json({ error: 'Error fetching songs' });
            return;
        }
        // res.json(result);
        res.send(result);
    });
});

// Serve static files from the 'public' directory
app.use(express.static('public'));

// Start the server
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`);
});
