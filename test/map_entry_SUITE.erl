-module('map_entry_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-entry-001'/1]).
-export(['map-entry-002'/1]).
-export(['map-entry-003'/1]).
-export(['map-entry-004'/1]).
-export(['map-entry-005'/1]).
-export(['map-entry-006'/1]).
-export(['map-entry-007'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-entry-001',
   'map-entry-002',
   'map-entry-003',
   'map-entry-004',
   'map-entry-005',
   'map-entry-006',
   'map-entry-007'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
].
'map-entry-001'(_Config) ->
   Qry = "map:entry(3, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                1
                map(*)
                map(xs:integer, xs:integer)
                function(xs:anyAtomicType) as xs:integer?
                $result(3) eq 5
                map:size($result) eq 1
                map:size(map:remove($result, 3)) eq 0
                map:size(map:remove($result, 1)) eq 1
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(3) eq 5",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size(map:remove($result, 3)) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size(map:remove($result, 1)) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' andalso xqerl_types:type(Res) == 'map(xs:integer, xs:integer)' andalso xqerl_types:type(Res) == 'function(xs:anyAtomicType) as xs:integer?' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-entry-002'(_Config) ->
   Qry = "map:entry(3, ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                1
                map(*)
                map(xs:integer, empty-sequence())
                empty($result(3))
                map:size($result) eq 1
                map:size(map:remove($result, 3)) eq 0
                map:size(map:remove($result, 1)) eq 1
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"empty($result(3))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size(map:remove($result, 3)) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size(map:remove($result, 1)) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' andalso xqerl_types:type(Res) == 'map(xs:integer, empty-sequence)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-entry-003'(_Config) ->
   Qry = "map:entry(\"foo\", (\"x\", \"y\", \"z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                1
                map(*)
                map(xs:string, xs:string*)
                empty($result(\"bar\"))
                count($result(\"foo\")) eq 3
                map:get($result, \"foo\") = \"z\"
                map:get($result, xs:untypedAtomic(\"foo\")) = \"z\"
                map:size($result) eq 1
                map:size(map:remove($result, \"foo\")) eq 0
                map:size(map:remove($result, \"bar\")) eq 1
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"empty($result(\"bar\"))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"count($result(\"foo\")) eq 3",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:get($result, \"foo\") = \"z\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:get($result, xs:untypedAtomic(\"foo\")) = \"z\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size(map:remove($result, \"foo\")) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size(map:remove($result, \"bar\")) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' andalso xqerl_types:type(Res) == 'map(xs:string, xs:string*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-entry-004'(_Config) ->
   Qry = "map:entry(xs:untypedAtomic(\"foo\"), map{})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                1
                map(*)
                map(xs:string, map(*))
                empty($result(\"bar\"))
                count($result(\"foo\")) eq 1
                empty($result(\"foo\")(\"bar\"))
                empty($result(xs:untypedAtomic(\"foo\"))(\"bar\"))
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"empty($result(\"bar\"))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"count($result(\"foo\")) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"empty($result(\"foo\")(\"bar\"))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"empty($result(xs:untypedAtomic(\"foo\"))(\"bar\"))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' andalso xqerl_types:type(Res) == 'map(xs:string, map(*))' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-entry-005'(_Config) ->
   Qry = "map:entry(number('NaN'), 'NaN')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                1
                map(*)
                map:size($result) eq 0
                empty($result(number('NaN')))
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"empty($result(number('NaN')))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-entry-006'(_Config) ->
   Qry = "map:entry(xs:float('NaN'), 'NaN')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                1
                map(*)
                map:size($result) eq 0
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-entry-007'(_Config) ->
   Qry = "map:collation(map:entry(0,1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            http://www.w3.org/2005/xpath-functions/collation/codepoint
        ",
   case xqerl_types:string_value(Res) of
             "http://www.w3.org/2005/xpath-functions/collation/codepoint" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
