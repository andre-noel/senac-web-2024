const container = document.getElementById('ex1');

document.querySelectorAll('input').forEach((el) => {
    el.addEventListener('keyup', ({ target }) => {
        container.style.display = document.getElementById('ex1-display').value;
        for (let i = 1; i <= 8; i++) {
            const prop = document.getElementById(`ex1-prop${i}`);
            const value = document.getElementById(`ex1-value${i}`);
            if (container.style.hasOwnProperty(prop.value))
                container.style[prop.value] = value.value;
        }
    });
});