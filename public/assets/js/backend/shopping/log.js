define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'shopping/log/index' + location.search,
                    add_url: 'shopping/log/add',
                    edit_url: 'shopping/log/edit',
                    del_url: 'shopping/log/del',
                    multi_url: 'shopping/log/multi',
                    import_url: 'shopping/log/import',
                    table: 'shopping_log',
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
                        {field: 'token_price', title: __('Token_price')},
                        {field: 'ticket_price', title: __('Ticket_price')},
                        {field: 'time', title: __('Time'), operate:'RANGE', addclass:'datetimerange', autocomplete:false},
                        {field: 'users_id', title: __('Users_id')},
                        {field: 'users.nickname', title: __('Users.nickname'), operate: 'LIKE'},
                        {field: 'users.account', title: __('Users.account'), operate: 'LIKE'},
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
