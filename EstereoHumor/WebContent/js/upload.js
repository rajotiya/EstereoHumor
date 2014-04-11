function setVisibility(id) {
if(document.getElementById('bt').value=='Hide'){
document.getElementById('bt').value = 'Upload Song';
document.getElementById(id).style.display = 'none';
}else{
document.getElementById('bt').value = 'Hide';
document.getElementById(id).style.display = 'inline';
}
}