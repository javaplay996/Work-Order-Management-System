<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"员工管理",
                        "menuJump":"列表",
                        "tableName":"yuangong"
                    }
                ],
                "menu":"员工管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"工单管理",
                        "menuJump":"列表",
                        "tableName":"gongdan"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"工单受理管理",
                        "menuJump":"列表",
                        "tableName":"gongdanShouli"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"工单沟通管理",
                        "menuJump":"列表",
                        "tableName":"gongdanGoutong"
                    }
                ],
                "menu":"工单管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"热点问题管理",
                        "menuJump":"列表",
                        "tableName":"redian"
                    }
                ],
                "menu":"热点问题管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"工单类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGongdan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"热点问题类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryRedian"
                    }

                ],
                "menu":"基础数据管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"工单管理",
                        "menuJump":"列表",
                        "tableName":"gongdan"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"工单受理管理",
                        "menuJump":"列表",
                        "tableName":"gongdanShouli"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"工单沟通管理",
                        "menuJump":"列表",
                        "tableName":"gongdanGoutong"
                    }
                ],
                "menu":"工单管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"热点问题管理",
                        "menuJump":"列表",
                        "tableName":"redian"
                    }
                ],
                "menu":"热点问题管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"员工",
        "tableName":"yuangong"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除"
                        ],
                        "menu":"工单管理",
                        "menuJump":"列表",
                        "tableName":"gongdan"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"工单受理管理",
                        "menuJump":"列表",
                        "tableName":"gongdanShouli"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增"
                        ],
                        "menu":"工单沟通管理",
                        "menuJump":"列表",
                        "tableName":"gongdanGoutong"
                    }
                ],
                "menu":"工单管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"热点问题管理",
                        "menuJump":"列表",
                        "tableName":"redian"
                    }
                ],
                "menu":"热点问题管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"用户",
        "tableName":"yonghu"
    }
];

var hasMessage = '';