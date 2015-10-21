Yandex Map
----------

Inserts Yandex Map into page body.

To insert map, paste into page code:
```
[yandex_map]
  id="%MAP_ID%"
  data-center_x="%LATITUDE%" data-center_y="%LONGITUDE%"
  data-zoom="%ZOOM%"
  data-hint="%HINT_TEXT%" data-balloon="%BALLOON_TEXT%"
  style="width: %WIDTH%; height: %HEIGHT%"
[/yandex_map]
```

- MAP_ID — map ID attribute
- LATITUDE — latitude of map center
- LONGITUDE — longitude of map center
- ZOOM — map zoom
- HINT_TEXT — tooltip text
- BALLOON_TEXT — baloon text
- WIDTH — map width
- HEIGHT — map height