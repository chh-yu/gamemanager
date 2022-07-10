define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'melee/weapon/index' + location.search,
                    add_url: 'melee/weapon/add',
                    edit_url: 'melee/weapon/edit',
                    del_url: 'melee/weapon/del',
                    multi_url: 'melee/weapon/multi',
                    import_url: 'melee/weapon/import',
                    table: 'melee_weapon',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'name', title: __('Name'), operate: 'LIKE'},
                        {field: 'damage', title: __('Damage')},
                        {field: 'damagepro', title: __('Damagepro')},
                        {field: 'distance', title: __('Distance')},
                        {field: 'durability', title: __('Durability')},
                        {field: 'introduction', title: __('Introduction'), operate: 'LIKE'},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});
