function changeImage(){
    element=document.getElementById('myimage')
    if(element.src.match("http://basemachine/EmployeeProfilePic/pic_bulbon.gif"))
    {
        element.src="http://basemachine/EmployeeProfilePic/pic_bulboff.gif";
    }
    else
    {
        element.src="http://basemachine/EmployeeProfilePic/pic_bulbon.gif";
    }
}