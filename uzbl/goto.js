var o = '%s';
if(o.indexOf('.') > 0){
    if(o.indexOf(':') < 0) o = 'http://' + o
    window.location = o;
} else window.location = 'http://duckduckgo.com/?q=' + o
