// import axios from 'axios';  
console.log("Welcome to spotify");

let songIndex = 0;
let audioElement = new Audio('songs/1.mp3');
let masterPlay = document.getElementById('masterPlay');
let myProgressBar = document.getElementById('myProgressBar');
let gif = document.getElementById('gif');
let masterSongName = document.getElementById('masterSongName');
let songitem = Array.from(document.getElementsByClassName('songitem'));

let songs = [];

// Function to fetch song data from the server
const fetchSongs = async () => {
    try {
        const response = await axios.get('http://localhost:3000/fetch');
        console.log(response);
        songs = response.data.map(song => ({
            songName: song.songName,
            filepath: song.filepath,
            coverPath: song.coverPath
        }));

    } catch (error) {
        console.error('Error fetching songs:', error);
    }
};

// console.log(songs);

await fetchSongs(); 


// let songs = [
//     {songName: "Salam-e-Ishq", filepath: "songs/1.mp3", coverPath: "covers/1.jpg"},
//     {songName: "Vande-Mataram", filepath: "songs/2.mp3", coverPath: "covers/2.jpg"},
//     {songName: "Bande-hai-ham-uske", filepath: "songs/3.mp3", coverPath: "covers/3.jpg"},
//     {songName: "Hawayein", filepath: "songs/4.mp3", coverPath: "covers/4.jpg"},
//     {songName: "Chale-Jana", filepath: "songs/5.mp3", coverPath: "covers/5.jpg"},
//     {songName: "Heat-Waves", filepath: "songs/6.mp3", coverPath: "covers/6.jpg"},
//     {songName: "Cheques", filepath: "songs/7.mp3", coverPath: "covers/7.jpg"},
//     {songName: "Challa", filepath: "songs/8.mp3", coverPath: "covers/8.jpg"},
//     {songName: "Taaron-ka-Mehakta-Chehra-ho", filepath: "songs/9.mp3", coverPath: "covers/9.jpg"},
//     {songName: "Ishq", filepath: "songs/10.mp3", coverPath: "covers/10.jpg"}
// ]

songitem.forEach((element, i) => {
    element.getElementsByTagName("img")[0].src = songs[i].coverPath;
    element.getElementsByClassName("songName")[0].innerText = songs[i].songName;
});

masterPlay.addEventListener('click', ()=>{
    if(audioElement.paused || audioElement.currentTime <= 0){
        audioElement.play();
        masterPlay.classList.remove('fa-play-circle');
        masterPlay.classList.add('fa-pause-circle');
        gif.style.opacity = 1;
    }
    else{
        audioElement.pause();
        masterPlay.classList.remove('fa-pause-circle');
        masterPlay.classList.add('fa-play-circle');
        gif.style.opacity = 0;
    }
})

audioElement.addEventListener('timeupdate', ()=>{
    console.log('timeupdate');
    let progress = parseInt((audioElement.currentTime / audioElement.duration) * 100);
    myProgressBar.value = progress;
})

myProgressBar.addEventListener('change' , ()=>{
    audioElement.currentTime = myProgressBar.value/100 * audioElement.duration;
})

const MakeAllPlays = ()=>{
    Array.from(document.getElementsByClassName('songItemPlay')).forEach((element)=>{
        
        element.classList.remove('fa-circle-pause');
        element.classList.add('fa-circle-play');
       
    })
}

Array.from(document.getElementsByClassName('songItemPlay')).forEach((element)=>{
    element.addEventListener('click', (e)=>{
        MakeAllPlays();
        songIndex = parseInt(e.target.id);
        console.log(songIndex);
        let index = songIndex + 1;
        e.target.classList.remove('fa-circle-play');
        e.target.classList.add('fa-circle-pause');

        // fetchSongPath(index).then(filePath => {
        //     audioElement.src = filePath;
        //     audioElement.currentTime = 0;
        //     audioElement.play();
        //     masterSongName.innerText = `Song ${songIndex + 1}`;
        //     masterPlay.classList.remove('fa-play-circle');
        //     masterPlay.classList.add('fa-pause-circle');
        //     gif.style.opacity = 1;
        // });

        audioElement.src = 'songs/${index}.mp3';
        audioElement.src = 'songs/' + index + '.mp3';
        audioElement.currentTime = 0;
        audioElement.play();
        masterSongName.innerText = songs[songIndex].songName;
        masterPlay.classList.remove('fa-circle-play');
        masterPlay.classList.add('fa-circle-pause');
        gif.style.opacity = 1;
        
    })
})



document.getElementById('next').addEventListener('click', ()=>{
    if(songIndex >= 6)songIndex = 0;
    else songIndex++;

    // fetchSongPath(songIndex).then(filePath => {
    //     audioElement.src = filePath;
    //     audioElement.currentTime = 0;
    //     audioElement.play();
    //     masterSongName.innerText = `Song ${songIndex + 1}`;
    //     masterPlay.classList.remove('fa-play-circle');
    //     masterPlay.classList.add('fa-pause-circle');
    //     gif.style.opacity = 1;
    // });

    audioElement.src = 'songs/' + songIndex + '.mp3';
    audioElement.currentTime = 0;
    audioElement.play();
    masterSongName.innerText = songs[songIndex].songName;
    masterPlay.classList.remove('fa-circle-play');
    masterPlay.classList.add('fa-circle-pause');
    gif.style.opacity = 1;
})

// var mysql = require('mysql');

// var con = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "",
//     database: "kk_music"
// });

document.getElementById('previous').addEventListener('click', ()=>{
    if(songIndex <= 0)songIndex = 0;
    else songIndex--;

    // con.connect(function(err) {
    //     if (err) throw err;
    //     con.query("SELECT * FROM songs", function (err, result, fields) {
    //         if (err) throw err;
    //         console.log(result);
    //     });
    // });


    // fetchSongPath(songIndex).then(filePath => {
    //     audioElement.src = filePath;
    //     audioElement.currentTime = 0;
    //     audioElement.play();
    //     masterSongName.innerText = `Song ${songIndex + 1}`;
    //     masterPlay.classList.remove('fa-play-circle');
    //     masterPlay.classList.add('fa-pause-circle');
    //     gif.style.opacity = 1;
    // });
    
    audioElement.src = 'songs/' + songIndex + '.mp3';
    audioElement.currentTime = 0;
    audioElement.play();
    masterSongName.innerText = songs[songIndex].songName;
    masterPlay.classList.remove('fa-circle-play');
    masterPlay.classList.add('fa-circle-pause');
    gif.style.opacity = 1;
})