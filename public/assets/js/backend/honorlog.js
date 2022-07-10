define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'honorlog/index' + location.search,
                    add_url: 'honorlog/add',
                    edit_url: 'honorlog/edit',
                    del_url: 'honorlog/del',
                    multi_url: 'honorlog/multi',
                    import_url: 'honorlog/import',
                    table: 'honor_log',
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
                        {field: 'users_id', title: __('Users_id')},
                        {field: 'honor_id', title: __('Honor_id')},
                        {field: 'time', title: __('Time'), operate:'RANGE', addclass:'datetimerange', autocomplete:false},
                        {field: 'users.nickname', title: __('Users.nickname'), operate: 'LIKE'},
                        {field: 'users.account', title: __('Users.account'), operate: 'LIKE'},
                        {field: 'honor.name', title: __('Honor.name'), operate: 'LIKE'},
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
