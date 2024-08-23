const container = document.getElementById('ex1');
const ex1Prop2 = document.getElementById('ex1-prop2');
const ex1Value2 = document.getElementById('ex1-value2');
const ex1Prop3 = document.getElementById('ex1-prop3');
const ex1Value3 = document.getElementById('ex1-value3');

document.querySelectorAll('input').forEach((el) => {
    el.addEventListener('keyup', ({ target }) => {
        switch (target.id) {
            case 'ex1-display':
                container.style.display = target.value;
                break;
            case 'ex1-prop2':
            case 'ex1-value2':
                if (!ex1Prop2.value || !ex1Value2.value) return false;
                container.style[ex1Prop2.value] = ex1Value2.value;
                break;
            case 'ex1-prop3':
            case 'ex1-value3':
                if (!ex1Prop3.value || !ex1Value3.value) return false;
                container.style[ex1Prop3.value] = ex1Value3.value;
                break;
        }
    });
});