export default function showScore() {
    const score = localStorage.getItem('score');
    if (score) {
        // mettre la classe btn à score
        document.getElementById('score').className = 'btn';
        document.getElementById('score').innerHTML = "Score: " + score;
    }
}
