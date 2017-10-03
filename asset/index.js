define(['oxjs'], function (OXJS) {
    return {
        init: function ($mod) {
            var forward = $mod.attr('data-forward'),
                REST = OXJS.useREST('payconfig').setDevHost('http://dev.openxsl.com/');//md5('saomachetie')

            var submit_callback=function (r) {
                if (r.code == 0) {
                    //console.log('gggood!')
                    forward ? (location.href = forward):OXJS.toast('ok');
                } else {
                    OXJS.toast(r.message)
                }
            };
            $('.J_mainform', $mod).on('submit', function (e) {
                var data = OXJS.formToJSON(e.target);
                if (data._id) {
                    REST.put(data,submit_callback );
                } else {
                    REST.post(data, submit_callback);
                }

                return false
            })


        }
    }
})
