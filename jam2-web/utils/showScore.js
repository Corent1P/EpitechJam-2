export default function showScore() {
    const score = localStorage.getItem('score');
    if (score) {
        document.getElementById('score').innerHTML = "Score: " + score;
    }
}
