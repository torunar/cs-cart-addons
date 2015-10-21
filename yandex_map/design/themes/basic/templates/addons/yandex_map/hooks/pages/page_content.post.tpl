{script src="http://api-maps.yandex.ru/2.1/?lang=ru_RU"}
<script type="text/javascript">
    ymaps.ready(ya_init);
    function ya_init() {
        $('.yandex_map').each(function(i, m) {
            var d  = $(m).data();
            d.zoom = d.zoom || 15;
            var map = new ymaps.Map($(m).attr('id'), {
                center: [d.center_x, d.center_y],
                zoom: d.zoom
            });
            var placemark = new ymaps.Placemark([d.center_x, d.center_y], {
                hintContent: d.hint,
                balloonContent: d.balloon
            });
            map.geoObjects.add(placemark);
        });
    }
</script>