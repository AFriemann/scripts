volume=$(amixer get Master | grep -o "[0-9]*\%")

if amixer get Master | grep "\[on\]" >&/dev/null; then
  echo $volume 
else
  echo "($volume)"
fi
