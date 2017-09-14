-module('fn_year_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-year-from-dateTime1args-1'/1]).
-export(['fn-year-from-dateTime1args-2'/1]).
-export(['fn-year-from-dateTime1args-3'/1]).
-export(['fn-year-from-dateTime-1'/1]).
-export(['fn-year-from-dateTime-2'/1]).
-export(['fn-year-from-dateTime-3'/1]).
-export(['fn-year-from-dateTime-4'/1]).
-export(['fn-year-from-dateTime-5'/1]).
-export(['fn-year-from-dateTime-6'/1]).
-export(['fn-year-from-dateTime-7'/1]).
-export(['fn-year-from-dateTime-8'/1]).
-export(['fn-year-from-dateTime-9'/1]).
-export(['fn-year-from-dateTime-10'/1]).
-export(['fn-year-from-dateTime-11'/1]).
-export(['fn-year-from-dateTime-12'/1]).
-export(['fn-year-from-dateTime-13'/1]).
-export(['fn-year-from-dateTimeNew-14'/1]).
-export(['fn-year-from-dateTimeNew-15'/1]).
-export(['fn-year-from-dateTime-16'/1]).
-export(['fn-year-from-dateTime-17'/1]).
-export(['fn-year-from-dateTime-18'/1]).
-export(['fn-year-from-dateTime-19'/1]).
-export(['K-YearFromDateTimeFunc-1'/1]).
-export(['K-YearFromDateTimeFunc-2'/1]).
-export(['K-YearFromDateTimeFunc-3'/1]).
-export(['K-YearFromDateTimeFunc-4'/1]).
-export(['K-YearFromDateTimeFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-year-from-dateTime1args-1',
   'fn-year-from-dateTime1args-2',
   'fn-year-from-dateTime1args-3',
   'fn-year-from-dateTime-1',
   'fn-year-from-dateTime-2',
   'fn-year-from-dateTime-3',
   'fn-year-from-dateTime-4',
   'fn-year-from-dateTime-5',
   'fn-year-from-dateTime-6',
   'fn-year-from-dateTime-7',
   'fn-year-from-dateTime-8',
   'fn-year-from-dateTime-9',
   'fn-year-from-dateTime-10',
   'fn-year-from-dateTime-11',
   'fn-year-from-dateTime-12',
   'fn-year-from-dateTime-13',
   'fn-year-from-dateTimeNew-14',
   'fn-year-from-dateTimeNew-15',
   'fn-year-from-dateTime-16',
   'fn-year-from-dateTime-17',
   'fn-year-from-dateTime-18',
   'fn-year-from-dateTime-19',
   'K-YearFromDateTimeFunc-1',
   'K-YearFromDateTimeFunc-2',
   'K-YearFromDateTimeFunc-3',
   'K-YearFromDateTimeFunc-4',
   'K-YearFromDateTimeFunc-5'].
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
'fn-year-from-dateTime1args-1'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1970
      ",
   case xqerl_types:string_value(Res) of
             "1970" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime1args-2'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1996
      ",
   case xqerl_types:string_value(Res) of
             "1996" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime1args-3'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2030
      ",
   case xqerl_types:string_value(Res) of
             "2030" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-1'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999
      ",
   case xqerl_types:string_value(Res) of
             "1999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-2'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1999-05-31T21:30:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999
      ",
   case xqerl_types:string_value(Res) of
             "1999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-3'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1999-12-31T19:20:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999
      ",
   case xqerl_types:string_value(Res) of
             "1999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-4'(_Config) ->
   Qry = "fn:avg((fn:year-from-dateTime(xs:dateTime(\"1996-12-31T12:00:00Z\")),fn:year-from-dateTime(xs:dateTime(\"2000-12-31T12:00:00Z\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1998
      ",
   case xqerl_types:string_value(Res) of
             "1998" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-5'(_Config) ->
   Qry = "fn:count(fn:year-from-dateTime(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-6'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"-1999-05-31T00:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1999
      ",
   case xqerl_types:string_value(Res) of
             "-1999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-7'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"0001-05-31T23:20:00-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-8'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) + fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3940
      ",
   case xqerl_types:string_value(Res) of
             "3940" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-9'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) - fn:year-from-dateTime(xs:dateTime(\"1969-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-10'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\")) * fn:year-from-dateTime(xs:dateTime(\"0002-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3940
      ",
   case xqerl_types:string_value(Res) of
             "3940" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-11'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1000-01-01T02:00:00Z\")) div fn:year-from-dateTime(xs:dateTime(\"0050-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         20
      ",
   case xqerl_types:string_value(Res) of
             "20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-12'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) idiv fn:year-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-13'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) mod fn:year-from-dateTime(xs:dateTime(\"1970-01-01T03:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTimeNew-14'(_Config) ->
   Qry = "+fn:year-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1971
      ",
   case xqerl_types:string_value(Res) of
             "1971" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTimeNew-15'(_Config) ->
   Qry = "-fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1970
      ",
   case xqerl_types:string_value(Res) of
             "-1970" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-year-from-dateTime-16'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-dateTime-17'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ne fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-dateTime-18'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) le fn:year-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-dateTime-19'(_Config) ->
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\")) ge fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearFromDateTimeFunc-1'(_Config) ->
   Qry = "year-from-dateTime()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-YearFromDateTimeFunc-2'(_Config) ->
   Qry = "year-from-dateTime((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-YearFromDateTimeFunc-3'(_Config) ->
   Qry = "empty(year-from-dateTime(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearFromDateTimeFunc-4'(_Config) ->
   Qry = "year-from-dateTime(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearFromDateTimeFunc-5'(_Config) ->
   Qry = "year-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 2001",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
