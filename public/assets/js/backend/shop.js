define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'shop/index' + location.search,
                    add_url: 'shop/add',
                    edit_url: 'shop/edit',
                    del_url: 'shop/del',
                    multi_url: 'shop/multi',
                    import_url: 'shop/import',
                    table: 'shop',
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
                        {field: 'num', title: __('Num')},
                        {field: 'token_price', title: __('Token_price')},
                        {field: 'ticket_price', title: __('Ticket_price')},
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
