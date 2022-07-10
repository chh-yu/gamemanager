define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'prize.pool.detail/index' + location.search,
                    add_url: 'prize.pool.detail/add',
                    edit_url: 'prize.pool.detail/edit',
                    del_url: 'prize.pool.detail/del',
                    multi_url: 'prize.pool.detail/multi',
                    import_url: 'prize.pool.detail/import',
                    table: 'prize_pool_detail',
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
                        {field: 'type', title: __('Type'), searchList: {"firearm":__('Firearm'),"melee_weapon":__('Melee_weapon'),"prop":__('Prop')}, formatter: Table.api.formatter.normal},
                        {field: 'stuff_id', title: __('Stuff_id')},
                        {field: 'weight', title: __('Weight')},
                        {field: 'prize_pool_id', title: __('Prize_pool_id')},
                        {field: 'pool.id', title: __('Pool.id')},
                        {field: 'pool.name', title: __('Pool.name')},
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
