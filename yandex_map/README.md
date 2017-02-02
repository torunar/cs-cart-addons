# Yandex Map

Allows to insert Yandex Map into a page body.

## How to

* Go to Administration panel &rarr; Website &rarr; Pages.

* Select **Add page**.

* Add any text into the *Description* field.

* To place a map in the text, paste the following text:
```
[yandex_map]
    id="%MAP_ID"
    data-x="%LATITUDE"
    data-y="%LONGITUDE"
    data-z="%ZOOM"
    data-h="%HINT_TEXT"
    data-b="%BALLOON_TEXT"
    style="width: %WIDTH; height: %HEIGHT"
[/yandex_map]
```

Where:
- `%MAP_ID` — unique map identifier (e.g. `volga`)
- `%LATITUDE` — latitude of the map center (e.g. `54.33`)
- `%LONGITUDE` — longitude of the map center (e.g. `48.43`)
- `%ZOOM` — map zoom level (`1` - `19`)
- `%HINT_TEXT` — tooltip text (e.g. `Volga`)
- `%BALLOON_TEXT` — balloon text (e.g. `Volga river`)
- `%WIDTH` — map width (e.g. `100%` or `600px`);
- `%HEIGHT` — map height (e.g. `400px`);