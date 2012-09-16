function show_elements()
{
    var elementNames = show_elements.arguments;
    for (var i=0; i<elementNames.length; i++)
    {
        var elementName = elementNames[i];
        document.getElementById(elementName).style.display='block';
    }
    //document.getElementById("location_selection").value = 'blabla';
}

function hide_elements()
{
    var elementNames = hide_elements.arguments;
    for (var i=0; i<elementNames.length; i++)
    {
        var elementName = elementNames[i];
        document.getElementById(elementName).style.display='none';
    }
    //document.getElementById("location_selection").value = 'blabla';
}
