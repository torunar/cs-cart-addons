<script type="text/javascript">
    (function(_, $) {
        $(document).ready(function() {
            ymaps.ready(yandex_map_initialize);
            function yandex_map_initialize() {
                $('.yandex_map_wrapper').each(function(i, m) {
                    var d  = $(m).data();
                    d.z = d.z || 15;
                    var map = new ymaps.Map($(m).attr('id'), {
                        center: [d.x, d.y],
                        zoom: d.z
                    });
                    var placemark = new ymaps.Placemark([d.x, d.y], {
                        hintContent: d.h,
                        balloonContent: d.b
                    });
                    map.geoObjects.add(placemark);
                });
            }
        });
    })(Tygh, Tygh.$);
</script>