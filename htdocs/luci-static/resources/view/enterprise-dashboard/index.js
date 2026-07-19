'use strict';
'require view';

return view.extend({

    load: function() {
        return Promise.resolve();
    },

    render: function() {

        let container = E('div', {
            'class': 'enterprise-dashboard'
        }, [

            E('h2', {}, [
                _('OpenWrt Enterprise Dashboard')
            ]),

            E('p', {}, [
                _('Dashboard framework initialized successfully.')
            ])

        ]);

        return container;
    }

});
