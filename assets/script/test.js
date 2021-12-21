// const root = document.createElement('div');
// root.appendChild(document.createTextNode('拍照'));
// document.body.appendChild(root);

const text = document.createElement('flutter-text');
text.setAttribute('value', 'Hello');
// text.setAttribute('style', '30');
// text.setAttribute('style', 'color:green;')
text.setAttribute('src', 'assets/image/photo.png');
document.body.appendChild(text);

text.addEventListener('click', function() {
    // Handle click
});