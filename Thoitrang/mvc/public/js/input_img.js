function getImagePreview(event) {
    var image = URL.createObjectURL(event.target.files[0]);
    var imagediv = document.getElementById('preview');
    var newimg = document.createElement('img');
    imagediv.innerHTML = '';
    newimg.src = image;
    imagediv.appendChild(newimg);
}