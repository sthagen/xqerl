-module('fn_format_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['format-date-001a'/1]).
-export(['format-date-001b'/1]).
-export(['format-date-001c'/1]).
-export(['format-date-001d'/1]).
-export(['format-date-001e'/1]).
-export(['format-date-001f'/1]).
-export(['format-date-001g'/1]).
-export(['format-date-005'/1]).
-export(['format-date-006'/1]).
-export(['format-date-007a'/1]).
-export(['format-date-007b'/1]).
-export(['format-date-007c'/1]).
-export(['format-date-008a'/1]).
-export(['format-date-008b'/1]).
-export(['format-date-008c'/1]).
-export(['format-date-009'/1]).
-export(['format-date-010'/1]).
-export(['format-date-011'/1]).
-export(['format-date-013a'/1]).
-export(['format-date-013b'/1]).
-export(['format-date-013c'/1]).
-export(['format-date-013d'/1]).
-export(['format-date-013e'/1]).
-export(['format-date-013f'/1]).
-export(['format-date-013g'/1]).
-export(['format-date-013h'/1]).
-export(['format-date-013i'/1]).
-export(['format-date-013j'/1]).
-export(['format-date-013k'/1]).
-export(['format-date-013L'/1]).
-export(['format-date-013m'/1]).
-export(['format-date-013n'/1]).
-export(['format-date-014'/1]).
-export(['format-date-015'/1]).
-export(['format-date-016'/1]).
-export(['format-date-017'/1]).
-export(['format-date-018'/1]).
-export(['format-date-019'/1]).
-export(['format-date-020'/1]).
-export(['format-date-021'/1]).
-export(['format-date-022'/1]).
-export(['format-date-023'/1]).
-export(['format-date-024'/1]).
-export(['format-date-025'/1]).
-export(['format-date-026'/1]).
-export(['format-date-027'/1]).
-export(['format-date-801err'/1]).
-export(['format-date-802err'/1]).
-export(['format-date-803err'/1]).
-export(['format-date-804err'/1]).
-export(['format-date-805err'/1]).
-export(['format-date-806err'/1]).
-export(['format-date-807err'/1]).
-export(['format-date-808err'/1]).
-export(['format-date-en101'/1]).
-export(['format-date-en102'/1]).
-export(['format-date-en103'/1]).
-export(['format-date-en104'/1]).
-export(['format-date-en105'/1]).
-export(['format-date-en106'/1]).
-export(['format-date-en111'/1]).
-export(['format-date-en112'/1]).
-export(['format-date-en113'/1]).
-export(['format-date-en114'/1]).
-export(['format-date-en115'/1]).
-export(['format-date-en116'/1]).
-export(['format-date-en117'/1]).
-export(['format-date-en118'/1]).
-export(['format-date-en121'/1]).
-export(['format-date-en122'/1]).
-export(['format-date-en123'/1]).
-export(['format-date-en124'/1]).
-export(['format-date-en125'/1]).
-export(['format-date-en126'/1]).
-export(['format-date-en127'/1]).
-export(['format-date-en128'/1]).
-export(['format-date-en129'/1]).
-export(['format-date-en130'/1]).
-export(['format-date-en131'/1]).
-export(['format-date-en132'/1]).
-export(['format-date-en133'/1]).
-export(['format-date-en134'/1]).
-export(['format-date-en141'/1]).
-export(['format-date-en151'/1]).
-export(['format-date-en152'/1]).
-export(['format-date-en153'/1]).
-export(['format-date-en154'/1]).
-export(['format-date-en155'/1]).
-export(['format-date-en156'/1]).
-export(['format-date-en157'/1]).
-export(['format-date-en158'/1]).
-export(['format-date-inpt-er1'/1]).
-export(['format-date-inpt-er2'/1]).
-export(['format-date-inpt-er3'/1]).
-export(['format-date-1340err'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'format-date-001a',
   'format-date-001b',
   'format-date-001c',
   'format-date-001d',
   'format-date-001e',
   'format-date-001f',
   'format-date-001g',
   'format-date-005',
   'format-date-006',
   'format-date-007a',
   'format-date-007b',
   'format-date-007c',
   'format-date-008a',
   'format-date-008b',
   'format-date-008c',
   'format-date-009',
   'format-date-010',
   'format-date-011',
   'format-date-013a',
   'format-date-013b',
   'format-date-013c',
   'format-date-013d',
   'format-date-013e',
   'format-date-013f',
   'format-date-013g',
   'format-date-013h',
   'format-date-013i',
   'format-date-013j',
   'format-date-013k',
   'format-date-013L',
   'format-date-013m',
   'format-date-013n',
   'format-date-014',
   'format-date-015',
   'format-date-016',
   'format-date-017',
   'format-date-018',
   'format-date-019',
   'format-date-020',
   'format-date-021',
   'format-date-022',
   'format-date-023',
   'format-date-024',
   'format-date-025',
   'format-date-026',
   'format-date-027',
   'format-date-801err',
   'format-date-802err',
   'format-date-803err',
   'format-date-804err',
   'format-date-805err',
   'format-date-806err',
   'format-date-807err',
   'format-date-808err',
   'format-date-en101',
   'format-date-en102',
   'format-date-en103',
   'format-date-en104',
   'format-date-en105',
   'format-date-en106',
   'format-date-en111',
   'format-date-en112',
   'format-date-en113',
   'format-date-en114',
   'format-date-en115',
   'format-date-en116',
   'format-date-en117',
   'format-date-en118',
   'format-date-en121',
   'format-date-en122',
   'format-date-en123',
   'format-date-en124',
   'format-date-en125',
   'format-date-en126',
   'format-date-en127',
   'format-date-en128',
   'format-date-en129',
   'format-date-en130',
   'format-date-en131',
   'format-date-en132',
   'format-date-en133',
   'format-date-en134',
   'format-date-en141',
   'format-date-en151',
   'format-date-en152',
   'format-date-en153',
   'format-date-en154',
   'format-date-en155',
   'format-date-en156',
   'format-date-en157',
   'format-date-en158',
   'format-date-inpt-er1',
   'format-date-inpt-er2',
   'format-date-inpt-er3',
   'format-date-1340err'].
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
'format-date-001a'(_Config) ->
   Qry = "format-date($d,\"[Y]-[M01]-[D]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2003-09-7
      ",
   case xqerl_types:string_value(Res) of
             "2003-09-7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-001b'(_Config) ->
   Qry = "format-date($d,\"[M]-[D]-[Y]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9-7-2003
      ",
   case xqerl_types:string_value(Res) of
             "9-7-2003" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-001c'(_Config) ->
   Qry = "format-date($d,\"[D]-[M]-[Y]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         7-9-2003
      ",
   case xqerl_types:string_value(Res) of
             "7-9-2003" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-001d'(_Config) ->
   Qry = "format-date($d,\"[D1] [MI] [Y]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         7 IX 2003
      ",
   case xqerl_types:string_value(Res) of
             "7 IX 2003" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-001e'(_Config) ->
   Qry = "format-date($d,\"[[[Y]-[M01]-[D01]]]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         [2003-09-07]
      ",
   case xqerl_types:string_value(Res) of
             "[2003-09-07]" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-001f'(_Config) ->
   Qry = "format-date($d,\"[[[Y0001]-[M01]-[D01]]]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         [2003-09-07]
      ",
   case xqerl_types:string_value(Res) of
             "[2003-09-07]" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-001g'(_Config) ->
   Qry = "format-date($d,\"([Y01]-[M01]-[D01])\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         (03-09-07)
      ",
   case xqerl_types:string_value(Res) of
             "(03-09-07)" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-005'(_Config) ->
   Qry = " string-join( for $i in 1 to 100 return format-date($t + xs:yearMonthDuration('P1Y')*$i,
         '[YI]'), ' ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1950-01-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         MCMLI MCMLII MCMLIII MCMLIV MCMLV MCMLVI MCMLVII MCMLVIII
            MCMLIX MCMLX MCMLXI MCMLXII MCMLXIII MCMLXIV MCMLXV MCMLXVI MCMLXVII MCMLXVIII
            MCMLXIX MCMLXX MCMLXXI MCMLXXII MCMLXXIII MCMLXXIV MCMLXXV MCMLXXVI MCMLXXVII
            MCMLXXVIII MCMLXXIX MCMLXXX MCMLXXXI MCMLXXXII MCMLXXXIII MCMLXXXIV MCMLXXXV
            MCMLXXXVI MCMLXXXVII MCMLXXXVIII MCMLXXXIX MCMXC MCMXCI MCMXCII MCMXCIII
            MCMXCIV MCMXCV MCMXCVI MCMXCVII MCMXCVIII MCMXCIX MM MMI MMII MMIII MMIV MMV
            MMVI MMVII MMVIII MMIX MMX MMXI MMXII MMXIII MMXIV MMXV MMXVI MMXVII
            MMXVIII MMXIX MMXX MMXXI MMXXII MMXXIII MMXXIV MMXXV MMXXVI MMXXVII MMXXVIII
            MMXXIX MMXXX MMXXXI MMXXXII MMXXXIII MMXXXIV MMXXXV MMXXXVI MMXXXVII MMXXXVIII
            MMXXXIX MMXL MMXLI MMXLII MMXLIII MMXLIV MMXLV MMXLVI MMXLVII MMXLVIII MMXLIX
            MML
      ",
   case xqerl_types:string_value(Res) of
             "MCMLI MCMLII MCMLIII MCMLIV MCMLV MCMLVI MCMLVII MCMLVIII MCMLIX MCMLX MCMLXI MCMLXII MCMLXIII MCMLXIV MCMLXV MCMLXVI MCMLXVII MCMLXVIII MCMLXIX MCMLXX MCMLXXI MCMLXXII MCMLXXIII MCMLXXIV MCMLXXV MCMLXXVI MCMLXXVII MCMLXXVIII MCMLXXIX MCMLXXX MCMLXXXI MCMLXXXII MCMLXXXIII MCMLXXXIV MCMLXXXV MCMLXXXVI MCMLXXXVII MCMLXXXVIII MCMLXXXIX MCMXC MCMXCI MCMXCII MCMXCIII MCMXCIV MCMXCV MCMXCVI MCMXCVII MCMXCVIII MCMXCIX MM MMI MMII MMIII MMIV MMV MMVI MMVII MMVIII MMIX MMX MMXI MMXII MMXIII MMXIV MMXV MMXVI MMXVII MMXVIII MMXIX MMXX MMXXI MMXXII MMXXIII MMXXIV MMXXV MMXXVI MMXXVII MMXXVIII MMXXIX MMXXX MMXXXI MMXXXII MMXXXIII MMXXXIV MMXXXV MMXXXVI MMXXXVII MMXXXVIII MMXXXIX MMXL MMXLI MMXLII MMXLIII MMXLIV MMXLV MMXLVI MMXLVII MMXLVIII MMXLIX MML" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-006'(_Config) ->
   Qry = " string-join( for $i in 1 to 100 return format-date($t +
         xs:yearMonthDuration('P17Y')*$i, '[Yi,4-4]'), ' ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0800-01-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         dcccxvii dcccxxxiv dcccli dccclxviii dccclxxxv cmii cmxix
            cmxxxvi cmliii cmlxx cmlxxxvii miv mxxi mxxxviii mlv mlxxii mlxxxix mcvi
            mcxxiii mcxl mclvii mclxxiv mcxci mccviii mccxxv mccxlii mcclix mcclxxvi
            mccxciii mcccx mcccxxvii mcccxliv mccclxi mccclxxviii mcccxcv mcdxii mcdxxix
            mcdxlvi mcdlxiii mcdlxxx mcdxcvii mdxiv mdxxxi mdxlviii mdlxv mdlxxxii mdxcix
            mdcxvi mdcxxxiii mdcl mdclxvii mdclxxxiv mdcci mdccxviii mdccxxxv mdcclii
            mdcclxix mdcclxxxvi mdccciii mdcccxx mdcccxxxvii mdcccliv mdccclxxi
            mdccclxxxviii mcmv mcmxxii mcmxxxix mcmlvi mcmlxxiii mcmxc mmvii mmxxiv mmxli
            mmlviii mmlxxv mmxcii mmcix mmcxxvi mmcxliii mmclx mmclxxvii mmcxciv mmccxi
            mmccxxviii mmccxlv mmcclxii mmcclxxix mmccxcvi mmcccxiii mmcccxxx mmcccxlvii
            mmccclxiv mmccclxxxi mmcccxcviii mmcdxv mmcdxxxii mmcdxlix mmcdlxvi mmcdlxxxiii
            mmd
      ",
   case xqerl_types:string_value(Res) of
             "dcccxvii dcccxxxiv dcccli dccclxviii dccclxxxv cmii cmxix cmxxxvi cmliii cmlxx cmlxxxvii miv mxxi mxxxviii mlv mlxxii mlxxxix mcvi mcxxiii mcxl mclvii mclxxiv mcxci mccviii mccxxv mccxlii mcclix mcclxxvi mccxciii mcccx mcccxxvii mcccxliv mccclxi mccclxxviii mcccxcv mcdxii mcdxxix mcdxlvi mcdlxiii mcdlxxx mcdxcvii mdxiv mdxxxi mdxlviii mdlxv mdlxxxii mdxcix mdcxvi mdcxxxiii mdcl mdclxvii mdclxxxiv mdcci mdccxviii mdccxxxv mdcclii mdcclxix mdcclxxxvi mdccciii mdcccxx mdcccxxxvii mdcccliv mdccclxxi mdccclxxxviii mcmv mcmxxii mcmxxxix mcmlvi mcmlxxiii mcmxc mmvii mmxxiv mmxli mmlviii mmlxxv mmxcii mmcix mmcxxvi mmcxliii mmclx mmclxxvii mmcxciv mmccxi mmccxxviii mmccxlv mmcclxii mmcclxxix mmccxcvi mmcccxiii mmcccxxx mmcccxlvii mmccclxiv mmccclxxxi mmcccxcviii mmcdxv mmcdxxxii mmcdxlix mmcdlxvi mmcdlxxxiii mmd" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-007a'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,36,100,44,34,91,89,3664,3664,3664,3665,93,45,91,77,3664,3665,93,45,91,68,3665,93,34,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,3666,3664,3664,3667,45,3664,3673,45,3671,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [3666,3664,3664,3667,45,3664,3673,45,3671] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-007b'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,36,100,44,34,91,77,3665,93,45,91,68,3665,93,45,91,89,3664,3664,3664,3665,93,34,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,3673,45,3671,45,3666,3664,3664,3667,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [3673,45,3671,45,3666,3664,3664,3667] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-007c'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,36,100,44,34,40,91,89,3664,3665,93,45,91,77,3664,3665,93,45,91,68,3664,3665,93,41,34,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,40,3664,3667,45,3664,3673,45,3664,3671,41,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [40,3664,3667,45,3664,3673,45,3664,3671,41] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-008a'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,36,100,44,34,91,89,66720,66720,66720,66721,93,45,91,77,66720,66721,93,45,91,68,66721,93,34,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,66722,66720,66720,66723,45,66720,66729,45,66727,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [66722,66720,66720,66723,45,66720,66729,45,66727] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-008b'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,36,100,44,34,91,77,66721,93,45,91,68,66721,93,45,91,89,66720,66720,66720,66721,93,34,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,66729,45,66727,45,66722,66720,66720,66723,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [66729,45,66727,45,66722,66720,66720,66723] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-008c'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,36,100,44,34,40,91,89,66720,66721,93,45,91,77,66720,66721,93,45,91,68,66720,66721,93,41,34,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-09-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,40,66720,66723,45,66720,66729,45,66720,66727,41,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [40,66720,66723,45,66720,66729,45,66720,66727,41] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-009'(_Config) ->
   Qry = "
        for $i in 1 to 48, $d in $t + xs:yearMonthDuration('P1M')*$i 
        return concat(\"[\", $d, \":\", format-date($d, '[W]', (), 'ISO', ()), \"]\")
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('2004-04-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            [2004-05-01:18] [2004-06-01:23] [2004-07-01:27] [2004-08-01:31] [2004-09-01:36] [2004-10-01:40] [2004-11-01:45] 
            [2004-12-01:49] [2005-01-01:53] [2005-02-01:5] [2005-03-01:9] [2005-04-01:13] [2005-05-01:17] [2005-06-01:22] 
            [2005-07-01:26] [2005-08-01:31] [2005-09-01:35] [2005-10-01:39] [2005-11-01:44] [2005-12-01:48] [2006-01-01:52] 
            [2006-02-01:5] [2006-03-01:9] [2006-04-01:13] [2006-05-01:18] [2006-06-01:22] [2006-07-01:26] [2006-08-01:31] 
            [2006-09-01:35] [2006-10-01:39] [2006-11-01:44] [2006-12-01:48] [2007-01-01:1] [2007-02-01:5] [2007-03-01:9] 
            [2007-04-01:13] [2007-05-01:18] [2007-06-01:22] [2007-07-01:26] [2007-08-01:31] [2007-09-01:35] [2007-10-01:40] 
            [2007-11-01:44] [2007-12-01:48] [2008-01-01:1] [2008-02-01:5] [2008-03-01:9] [2008-04-01:14]
         
      ",
   case xqerl_types:string_value(Res) of
             "[2004-05-01:18] [2004-06-01:23] [2004-07-01:27] [2004-08-01:31] [2004-09-01:36] [2004-10-01:40] [2004-11-01:45] [2004-12-01:49] [2005-01-01:53] [2005-02-01:5] [2005-03-01:9] [2005-04-01:13] [2005-05-01:17] [2005-06-01:22] [2005-07-01:26] [2005-08-01:31] [2005-09-01:35] [2005-10-01:39] [2005-11-01:44] [2005-12-01:48] [2006-01-01:52] [2006-02-01:5] [2006-03-01:9] [2006-04-01:13] [2006-05-01:18] [2006-06-01:22] [2006-07-01:26] [2006-08-01:31] [2006-09-01:35] [2006-10-01:39] [2006-11-01:44] [2006-12-01:48] [2007-01-01:1] [2007-02-01:5] [2007-03-01:9] [2007-04-01:13] [2007-05-01:18] [2007-06-01:22] [2007-07-01:26] [2007-08-01:31] [2007-09-01:35] [2007-10-01:40] [2007-11-01:44] [2007-12-01:48] [2008-01-01:1] [2008-02-01:5] [2008-03-01:9] [2008-04-01:14]" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-010'(_Config) ->
   Qry = "for $i in 1 to 48, $d in $t + xs:yearMonthDuration('P1M')*$i 
            return concat(\"[\", $d, \":\", format-date($d, '[F01]', (), 'Q{}ISO', ()), ']')
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('2003-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            [2004-01-01:04] [2004-02-01:07] [2004-03-01:01] [2004-04-01:04] [2004-05-01:06] [2004-06-01:02] 
            [2004-07-01:04] [2004-08-01:07] [2004-09-01:03] [2004-10-01:05] [2004-11-01:01] [2004-12-01:03] 
            [2005-01-01:06] [2005-02-01:02] [2005-03-01:02] [2005-04-01:05] [2005-05-01:07] [2005-06-01:03] 
            [2005-07-01:05] [2005-08-01:01] [2005-09-01:04] [2005-10-01:06] [2005-11-01:02] [2005-12-01:04] 
            [2006-01-01:07] [2006-02-01:03] [2006-03-01:03] [2006-04-01:06] [2006-05-01:01] [2006-06-01:04] 
            [2006-07-01:06] [2006-08-01:02] [2006-09-01:05] [2006-10-01:07] [2006-11-01:03] [2006-12-01:05] 
            [2007-01-01:01] [2007-02-01:04] [2007-03-01:04] [2007-04-01:07] [2007-05-01:02] [2007-06-01:05] 
            [2007-07-01:07] [2007-08-01:03] [2007-09-01:06] [2007-10-01:01] [2007-11-01:04] [2007-12-01:06]             
         
      ",
   case xqerl_types:string_value(Res) of
             "[2004-01-01:04] [2004-02-01:07] [2004-03-01:01] [2004-04-01:04] [2004-05-01:06] [2004-06-01:02] [2004-07-01:04] [2004-08-01:07] [2004-09-01:03] [2004-10-01:05] [2004-11-01:01] [2004-12-01:03] [2005-01-01:06] [2005-02-01:02] [2005-03-01:02] [2005-04-01:05] [2005-05-01:07] [2005-06-01:03] [2005-07-01:05] [2005-08-01:01] [2005-09-01:04] [2005-10-01:06] [2005-11-01:02] [2005-12-01:04] [2006-01-01:07] [2006-02-01:03] [2006-03-01:03] [2006-04-01:06] [2006-05-01:01] [2006-06-01:04] [2006-07-01:06] [2006-08-01:02] [2006-09-01:05] [2006-10-01:07] [2006-11-01:03] [2006-12-01:05] [2007-01-01:01] [2007-02-01:04] [2007-03-01:04] [2007-04-01:07] [2007-05-01:02] [2007-06-01:05] [2007-07-01:07] [2007-08-01:03] [2007-09-01:06] [2007-10-01:01] [2007-11-01:04] [2007-12-01:06]" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-011'(_Config) ->
   Qry = "
        for $i in 1 to 48, $d in $t + xs:dayTimeDuration('P3D')*$i 
        return concat(\"[\", $d, \":\", format-date($d, '[w]', (), 'ISO', ()), ']')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('2005-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            [2005-12-04:1] [2005-12-07:2] [2005-12-10:2] [2005-12-13:3] [2005-12-16:3] [2005-12-19:4] [2005-12-22:4] 
            [2005-12-25:4] [2005-12-28:5] [2005-12-31:5] [2006-01-03:1] [2006-01-06:1] [2006-01-09:2] [2006-01-12:2] 
            [2006-01-15:2] [2006-01-18:3] [2006-01-21:3] [2006-01-24:4] [2006-01-27:4] [2006-01-30:5] [2006-02-02:1] 
            [2006-02-05:1] [2006-02-08:2] [2006-02-11:2] [2006-02-14:3] [2006-02-17:3] [2006-02-20:4] [2006-02-23:4] 
            [2006-02-26:4] [2006-03-01:1] [2006-03-04:1] [2006-03-07:2] [2006-03-10:2] [2006-03-13:3] [2006-03-16:3] 
            [2006-03-19:3] [2006-03-22:4] [2006-03-25:4] [2006-03-28:5] [2006-03-31:5] [2006-04-03:1] [2006-04-06:1] 
            [2006-04-09:1] [2006-04-12:2] [2006-04-15:2] [2006-04-18:3] [2006-04-21:3] [2006-04-24:4]            
         
      ",
   case xqerl_types:string_value(Res) of
             "[2005-12-04:1] [2005-12-07:2] [2005-12-10:2] [2005-12-13:3] [2005-12-16:3] [2005-12-19:4] [2005-12-22:4] [2005-12-25:4] [2005-12-28:5] [2005-12-31:5] [2006-01-03:1] [2006-01-06:1] [2006-01-09:2] [2006-01-12:2] [2006-01-15:2] [2006-01-18:3] [2006-01-21:3] [2006-01-24:4] [2006-01-27:4] [2006-01-30:5] [2006-02-02:1] [2006-02-05:1] [2006-02-08:2] [2006-02-11:2] [2006-02-14:3] [2006-02-17:3] [2006-02-20:4] [2006-02-23:4] [2006-02-26:4] [2006-03-01:1] [2006-03-04:1] [2006-03-07:2] [2006-03-10:2] [2006-03-13:3] [2006-03-16:3] [2006-03-19:3] [2006-03-22:4] [2006-03-25:4] [2006-03-28:5] [2006-03-31:5] [2006-04-03:1] [2006-04-06:1] [2006-04-09:1] [2006-04-12:2] [2006-04-15:2] [2006-04-18:3] [2006-04-21:3] [2006-04-24:4]" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-013a'(_Config) ->
   Qry = "format-date($t, '[Y,4-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0985
      ",
   case xqerl_types:string_value(Res) of
             "0985" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013b'(_Config) ->
   Qry = "format-date($t, '[Y,3-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         985
      ",
   case xqerl_types:string_value(Res) of
             "985" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013c'(_Config) ->
   Qry = "format-date($t, '[Y,2-5]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         985
      ",
   case xqerl_types:string_value(Res) of
             "985" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013d'(_Config) ->
   Qry = "format-date($t, '[Y,2-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         85
      ",
   case xqerl_types:string_value(Res) of
             "85" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013e'(_Config) ->
   Qry = "format-date($t, '[Y,2-*]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         985
      ",
   case xqerl_types:string_value(Res) of
             "985" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013f'(_Config) ->
   Qry = "format-date($t, '[Y,*-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         985
      ",
   case xqerl_types:string_value(Res) of
             "985" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013g'(_Config) ->
   Qry = "format-date($t, '[Y,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         985
      ",
   case xqerl_types:string_value(Res) of
             "985" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013h'(_Config) ->
   Qry = "format-date($t, '[M,4-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0003
      ",
   case xqerl_types:string_value(Res) of
             "0003" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013i'(_Config) ->
   Qry = "format-date($t, '[M,1-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_types:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013j'(_Config) ->
   Qry = "format-date($t, '[M,2-5]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         03
      ",
   case xqerl_types:string_value(Res) of
             "03" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013k'(_Config) ->
   Qry = "format-date($t, '[M,2-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         03
      ",
   case xqerl_types:string_value(Res) of
             "03" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013L'(_Config) ->
   Qry = "format-date($t, '[M,1-*]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_types:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013m'(_Config) ->
   Qry = "format-date($t, '[M,*-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_types:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-013n'(_Config) ->
   Qry = "format-date($t, '[M,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('0985-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         003
      ",
   case xqerl_types:string_value(Res) of
             "003" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-014'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z]'), ' ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -14:00 -13:30 -13:00 -12:30 -12:00 -11:30 -11:00 -10:30 -10:00
            -09:30 -09:00 -08:30 -08:00 -07:30 -07:00 -06:30 -06:00 -05:30 -05:00 -04:30
            -04:00 -03:30 -03:00 -02:30 -02:00 -01:30 -01:00 -00:30 +00:00 +00:30 +01:00
            +01:30 +02:00 +02:30 +03:00 +03:30 +04:00 +04:30 +05:00 +05:30 +06:00 +06:30
            +07:00 +07:30 +08:00 +08:30 +09:00 +09:30 +10:00 +10:30 +11:00 +11:30 +12:00
            +12:30 +13:00 +13:30 +14:00
      ",
   case xqerl_types:string_value(Res) of
             "-14:00 -13:30 -13:00 -12:30 -12:00 -11:30 -11:00 -10:30 -10:00 -09:30 -09:00 -08:30 -08:00 -07:30 -07:00 -06:30 -06:00 -05:30 -05:00 -04:30 -04:00 -03:30 -03:00 -02:30 -02:00 -01:30 -01:00 -00:30 +00:00 +00:30 +01:00 +01:30 +02:00 +02:30 +03:00 +03:30 +04:00 +04:30 +05:00 +05:30 +06:00 +06:30 +07:00 +07:30 +08:00 +08:30 +09:00 +09:30 +10:00 +10:30 +11:00 +11:30 +12:00 +12:30 +13:00 +13:30 +14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-015'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[z0]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         GMT-14; GMT-13:30; GMT-13; GMT-12:30; GMT-12; GMT-11:30; GMT-11;
            GMT-10:30; GMT-10; GMT-9:30; GMT-9; GMT-8:30; GMT-8; GMT-7:30; GMT-7; GMT-6:30; GMT-6;
            GMT-5:30; GMT-5; GMT-4:30; GMT-4; GMT-3:30; GMT-3; GMT-2:30; GMT-2; GMT-1:30; GMT-1;
            GMT-0:30; GMT+0; GMT+0:30; GMT+1; GMT+1:30; GMT+2; GMT+2:30; GMT+3; GMT+3:30; GMT+4;
            GMT+4:30; GMT+5; GMT+5:30; GMT+6; GMT+6:30; GMT+7; GMT+7:30; GMT+8; GMT+8:30; GMT+9;
            GMT+9:30; GMT+10; GMT+10:30; GMT+11; GMT+11:30; GMT+12; GMT+12:30; GMT+13; GMT+13:30;
            GMT+14
      ",
   case xqerl_types:string_value(Res) of
             "GMT-14; GMT-13:30; GMT-13; GMT-12:30; GMT-12; GMT-11:30; GMT-11; GMT-10:30; GMT-10; GMT-9:30; GMT-9; GMT-8:30; GMT-8; GMT-7:30; GMT-7; GMT-6:30; GMT-6; GMT-5:30; GMT-5; GMT-4:30; GMT-4; GMT-3:30; GMT-3; GMT-2:30; GMT-2; GMT-1:30; GMT-1; GMT-0:30; GMT+0; GMT+0:30; GMT+1; GMT+1:30; GMT+2; GMT+2:30; GMT+3; GMT+3:30; GMT+4; GMT+4:30; GMT+5; GMT+5:30; GMT+6; GMT+6:30; GMT+7; GMT+7:30; GMT+8; GMT+8:30; GMT+9; GMT+9:30; GMT+10; GMT+10:30; GMT+11; GMT+11:30; GMT+12; GMT+12:30; GMT+13; GMT+13:30; GMT+14" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-016'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[z]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         	GMT-14:00; GMT-13:30; GMT-13:00; GMT-12:30; GMT-12:00; GMT-11:30; GMT-11:00;
			GMT-10:30; GMT-10:00; GMT-09:30; GMT-09:00; GMT-08:30; GMT-08:00; GMT-07:30;
			GMT-07:00; GMT-06:30; GMT-06:00; GMT-05:30; GMT-05:00; GMT-04:30; GMT-04:00;
			GMT-03:30; GMT-03:00; GMT-02:30; GMT-02:00; GMT-01:30; GMT-01:00; GMT-00:30;
			GMT+00:00; GMT+00:30; GMT+01:00; GMT+01:30; GMT+02:00; GMT+02:30; GMT+03:00;
			GMT+03:30; GMT+04:00; GMT+04:30; GMT+05:00; GMT+05:30; GMT+06:00; GMT+06:30;
			GMT+07:00; GMT+07:30; GMT+08:00; GMT+08:30; GMT+09:00; GMT+09:30; GMT+10:00;
			GMT+10:30; GMT+11:00; GMT+11:30; GMT+12:00; GMT+12:30; GMT+13:00; GMT+13:30;
			GMT+14:00
		 
      ",
   case xqerl_types:string_value(Res) of
             "GMT-14:00; GMT-13:30; GMT-13:00; GMT-12:30; GMT-12:00; GMT-11:30; GMT-11:00; GMT-10:30; GMT-10:00; GMT-09:30; GMT-09:00; GMT-08:30; GMT-08:00; GMT-07:30; GMT-07:00; GMT-06:30; GMT-06:00; GMT-05:30; GMT-05:00; GMT-04:30; GMT-04:00; GMT-03:30; GMT-03:00; GMT-02:30; GMT-02:00; GMT-01:30; GMT-01:00; GMT-00:30; GMT+00:00; GMT+00:30; GMT+01:00; GMT+01:30; GMT+02:00; GMT+02:30; GMT+03:00; GMT+03:30; GMT+04:00; GMT+04:30; GMT+05:00; GMT+05:30; GMT+06:00; GMT+06:30; GMT+07:00; GMT+07:30; GMT+08:00; GMT+08:30; GMT+09:00; GMT+09:30; GMT+10:00; GMT+10:30; GMT+11:00; GMT+11:30; GMT+12:00; GMT+12:30; GMT+13:00; GMT+13:30; GMT+14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-017'(_Config) ->
   Qry = "string-join( for $z in -12 to +12 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT1H')), '[ZZ]'), ' ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         	Y X W V U T S R Q P O N Z A B C D E F G H I K L M
		 
      ",
   case xqerl_types:string_value(Res) of
             "Y X W V U T S R Q P O N Z A B C D E F G H I K L M" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-018'(_Config) ->
   Qry = "format-date(xs:date('1987-12-13'), '[ZZ]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         J
      ",
   case xqerl_types:string_value(Res) of
             "J" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-019'(_Config) ->
   Qry = "format-date(xs:date('1987-12-13+05:30'), '[ZZ]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         +05:30
      ",
   case xqerl_types:string_value(Res) of
             "+05:30" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-020'(_Config) ->
   Qry = "format-date(xs:date('1987-12-13+13:00'), '[ZZ]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         +13:00
      ",
   case xqerl_types:string_value(Res) of
             "+13:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-021'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[z00~00]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         	GMT-14~00; GMT-13~30; GMT-13~00; GMT-12~30; GMT-12~00; GMT-11~30; GMT-11~00; GMT-10~30; 
         	GMT-10~00; GMT-09~30; GMT-09~00; GMT-08~30; GMT-08~00; GMT-07~30; GMT-07~00; GMT-06~30; 
         	GMT-06~00; GMT-05~30; GMT-05~00; GMT-04~30; GMT-04~00; GMT-03~30; GMT-03~00; GMT-02~30; 
         	GMT-02~00; GMT-01~30; GMT-01~00; GMT-00~30; GMT+00~00; GMT+00~30; GMT+01~00; GMT+01~30; 
         	GMT+02~00; GMT+02~30; GMT+03~00; GMT+03~30; GMT+04~00; GMT+04~30; GMT+05~00; GMT+05~30; 
         	GMT+06~00; GMT+06~30; GMT+07~00; GMT+07~30; GMT+08~00; GMT+08~30; GMT+09~00; GMT+09~30; 
         	GMT+10~00; GMT+10~30; GMT+11~00; GMT+11~30; GMT+12~00; GMT+12~30; GMT+13~00; GMT+13~30; 
         	GMT+14~00
		 
      ",
   case xqerl_types:string_value(Res) of
             "GMT-14~00; GMT-13~30; GMT-13~00; GMT-12~30; GMT-12~00; GMT-11~30; GMT-11~00; GMT-10~30; GMT-10~00; GMT-09~30; GMT-09~00; GMT-08~30; GMT-08~00; GMT-07~30; GMT-07~00; GMT-06~30; GMT-06~00; GMT-05~30; GMT-05~00; GMT-04~30; GMT-04~00; GMT-03~30; GMT-03~00; GMT-02~30; GMT-02~00; GMT-01~30; GMT-01~00; GMT-00~30; GMT+00~00; GMT+00~30; GMT+01~00; GMT+01~30; GMT+02~00; GMT+02~30; GMT+03~00; GMT+03~30; GMT+04~00; GMT+04~30; GMT+05~00; GMT+05~30; GMT+06~00; GMT+06~30; GMT+07~00; GMT+07~30; GMT+08~00; GMT+08~30; GMT+09~00; GMT+09~30; GMT+10~00; GMT+10~30; GMT+11~00; GMT+11~30; GMT+12~00; GMT+12~30; GMT+13~00; GMT+13~30; GMT+14~00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-022'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,120,115,58,100,97,116,101,40,39,50,48,49,50,45,48,53,45,49,56,43,48,53,58,51,48,39,41,44,32,39,91,90,1632,1632,58,1632,1632,93,39,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,43,1632,1637,58,1635,1632,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [43,1632,1637,58,1635,1632] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-023'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z0:01]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         	-14:00; -13:30; -13:00; -12:30; -12:00; -11:30; -11:00; -10:30; -10:00; -9:30; -9:00;
         	-8:30; -8:00; -7:30; -7:00; -6:30; -6:00; -5:30; -5:00; -4:30; -4:00; -3:30; -3:00;
         	-2:30; -2:00; -1:30; -1:00; -0:30; +0:00; +0:30; +1:00; +1:30; +2:00; +2:30; +3:00;
         	+3:30; +4:00; +4:30; +5:00; +5:30; +6:00; +6:30; +7:00; +7:30; +8:00; +8:30; +9:00;
         	+9:30; +10:00; +10:30; +11:00; +11:30; +12:00; +12:30; +13:00; +13:30; +14:00
		 
      ",
   case xqerl_types:string_value(Res) of
             "-14:00; -13:30; -13:00; -12:30; -12:00; -11:30; -11:00; -10:30; -10:00; -9:30; -9:00; -8:30; -8:00; -7:30; -7:00; -6:30; -6:00; -5:30; -5:00; -4:30; -4:00; -3:30; -3:00; -2:30; -2:00; -1:30; -1:00; -0:30; +0:00; +0:30; +1:00; +1:30; +2:00; +2:30; +3:00; +3:30; +4:00; +4:30; +5:00; +5:30; +6:00; +6:30; +7:00; +7:30; +8:00; +8:30; +9:00; +9:30; +10:00; +10:30; +11:00; +11:30; +12:00; +12:30; +13:00; +13:30; +14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-024'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z999]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         	-1400; -1330; -1300; -1230; -1200; -1130; -1100; -1030; -1000; -930; -900; -830; 
         	-800; -730; -700; -630; -600; -530; -500; -430; -400; -330; -300; -230; -200; 
         	-130; -100; -030; +000; +030; +100; +130; +200; +230; +300; +330; +400; +430; 
         	+500; +530; +600; +630; +700; +730; +800; +830; +900; +930; +1000; +1030; +1100; 
         	+1130; +1200; +1230; +1300; +1330; +1400
		 
      ",
   case xqerl_types:string_value(Res) of
             "-1400; -1330; -1300; -1230; -1200; -1130; -1100; -1030; -1000; -930; -900; -830; -800; -730; -700; -630; -600; -530; -500; -430; -400; -330; -300; -230; -200; -130; -100; -030; +000; +030; +100; +130; +200; +230; +300; +330; +400; +430; +500; +530; +600; +630; +700; +730; +800; +830; +900; +930; +1000; +1030; +1100; +1130; +1200; +1230; +1300; +1330; +1400" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-025'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z99]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         	-14; -13:30; -13; -12:30; -12; -11:30; -11; -10:30; -10; -09:30; -09; -08:30; -08;
         	-07:30; -07; -06:30; -06; -05:30; -05; -04:30; -04; -03:30; -03; -02:30; -02; -01:30;
         	-01; -00:30; +00; +00:30; +01; +01:30; +02; +02:30; +03; +03:30; +04; +04:30; +05;
         	+05:30; +06; +06:30; +07; +07:30; +08; +08:30; +09; +09:30; +10; +10:30; +11; +11:30;
         	+12; +12:30; +13; +13:30; +14
		 
      ",
   case xqerl_types:string_value(Res) of
             "-14; -13:30; -13; -12:30; -12; -11:30; -11; -10:30; -10; -09:30; -09; -08:30; -08; -07:30; -07; -06:30; -06; -05:30; -05; -04:30; -04; -03:30; -03; -02:30; -02; -01:30; -01; -00:30; +00; +00:30; +01; +01:30; +02; +02:30; +03; +03:30; +04; +04:30; +05; +05:30; +06; +06:30; +07; +07:30; +08; +08:30; +09; +09:30; +10; +10:30; +11; +11:30; +12; +12:30; +13; +13:30; +14" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-026'(_Config) ->
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z0t]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         	-14; -13:30; -13; -12:30; -12; -11:30; -11; -10:30; -10; -9:30; -9; -8:30; -8;
         	-7:30; -7; -6:30; -6; -5:30; -5; -4:30; -4; -3:30; -3; -2:30; -2; -1:30; -1; -0:30;
         	Z; +0:30; +1; +1:30; +2; +2:30; +3; +3:30; +4; +4:30; +5; +5:30; +6; +6:30; +7;
         	+7:30; +8; +8:30; +9; +9:30; +10; +10:30; +11; +11:30; +12; +12:30; +13;
         	+13:30; +14
		 
      ",
   case xqerl_types:string_value(Res) of
             "-14; -13:30; -13; -12:30; -12; -11:30; -11; -10:30; -10; -9:30; -9; -8:30; -8; -7:30; -7; -6:30; -6; -5:30; -5; -4:30; -4; -3:30; -3; -2:30; -2; -1:30; -1; -0:30; Z; +0:30; +1; +1:30; +2; +2:30; +3; +3:30; +4; +4:30; +5; +5:30; +6; +6:30; +7; +7:30; +8; +8:30; +9; +9:30; +10; +10:30; +11; +11:30; +12; +12:30; +13; +13:30; +14" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-027'(_Config) ->
   Qry = [102,111,114,109,97,116,45,100,97,116,101,40,120,115,58,100,97,116,101,40,39,50,48,49,50,45,48,53,45,49,56,43,48,53,58,51,48,39,41,44,32,39,91,90,66721,58,66720,66721,93,39,41],
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:date","xs:date('1985-03-01Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,43,66725,58,66723,66720,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [43,66725,58,66723,66720] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-801err'(_Config) ->
   Qry = "format-date(current-date(), '[bla]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1340") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-802err'(_Config) ->
   Qry = "format-date(current-date(), '[H]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-803err'(_Config) ->
   Qry = "format-date(current-date(), '[h]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-804err'(_Config) ->
   Qry = "format-date(current-date(), '[P]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-805err'(_Config) ->
   Qry = "format-date(current-date(), '[m]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-806err'(_Config) ->
   Qry = "format-date(current-date(), '[s]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-807err'(_Config) ->
   Qry = "format-date(current-date(), '[f]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-808err'(_Config) ->
   Qry = "format-date(current-date(), '[bla]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1340") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-en101'(_Config) ->
   Qry = "for $i in 1 to 12 return let $d2 := $d + xs:yearMonthDuration('P1M')*$i return
         format-date($d2, '[MN]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER
         
      ",
   case xqerl_types:string_value(Res) of
             "JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en102'(_Config) ->
   Qry = "for $i in 1 to 12 return let $d2 := $d + xs:yearMonthDuration('P1M')*$i return
         format-date($d2, '[Mn]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            january february march april may june july august september october november december
         
      ",
   case xqerl_types:string_value(Res) of
             "january february march april may june july august september october november december" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en103'(_Config) ->
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[MNn]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            January February March April May June July August September October November December
         
      ",
   case xqerl_types:string_value(Res) of
             "January February March April May June July August September October November December" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en104'(_Config) ->
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[MN,3-3]', 'en', (), ()) 
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC
      ",
   case xqerl_types:string_value(Res) of
             "JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en105'(_Config) ->
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[Mn,3-3]', 'en', (), ()) 
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         jan feb mar apr may jun jul aug sep oct nov dec
      ",
   case xqerl_types:string_value(Res) of
             "jan feb mar apr may jun jul aug sep oct nov dec" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en106'(_Config) ->
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[MNn,3-3]', 'en', (), ()) 
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
      ",
   case xqerl_types:string_value(Res) of
             "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en111'(_Config) ->
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FN]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY SUNDAY
         
      ",
   case xqerl_types:string_value(Res) of
             "MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY SUNDAY" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en112'(_Config) ->
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[Fn]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             monday tuesday wednesday thursday friday saturday sunday
         
      ",
   case xqerl_types:string_value(Res) of
             "monday tuesday wednesday thursday friday saturday sunday" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en113'(_Config) ->
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FNn]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            Monday Tuesday Wednesday Thursday Friday Saturday Sunday
         
      ",
   case xqerl_types:string_value(Res) of
             "Monday Tuesday Wednesday Thursday Friday Saturday Sunday" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en114'(_Config) ->
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FN,3-3]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         MON TUE WED THU FRI SAT SUN
      ",
   case xqerl_types:string_value(Res) of
             "MON TUE WED THU FRI SAT SUN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-en115'(_Config) ->
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[Fn,3-3]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         mon tue wed thu fri sat sun
      ",
   case xqerl_types:string_value(Res) of
             "mon tue wed thu fri sat sun" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-en116'(_Config) ->
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FNn,3-3]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Mon Tue Wed Thu Fri Sat Sun
      ",
   case xqerl_types:string_value(Res) of
             "Mon Tue Wed Thu Fri Sat Sun" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-en117'(_Config) ->
   Qry = "
      	for $i in 1 to 7 
      	return let $d2 := $d + xs:dayTimeDuration('P1D')*$i 
      	return let $abb := format-date($d2, '[FNn,3-4]', 'en', (), ()) 
        return let $expected := ('Mon', 'Tues', 'Weds', 'Thur', 'Fri', 'Sat', 'Sun') 
        return (
         	substring($abb, 1, 3), 
         	starts-with($expected[$i], $abb) and string-length($abb) le 4 and string-length($abb) ge 3) 
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            Mon true Tue true Wed true Thu true Fri true Sat true Sun true
         
      ",
   case xqerl_types:string_value(Res) of
             "Mon true Tue true Wed true Thu true Fri true Sat true Sun true" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en118'(_Config) ->
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return let $abb :=
         format-date($d2, '[FNn,3-5]', 'en', (), ()) return let $expected := ('Mon', 'Tues', 'Weds',
         'Thurs', 'Fri', 'Sat', 'Sun') return (substring($abb, 1, 3), starts-with($expected[$i],
         $abb) and string-length($abb) le 5 and string-length($abb) ge 3) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-07')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            Mon true Tue true Wed true Thu true Fri true Sat true Sun true
         
      ",
   case xqerl_types:string_value(Res) of
             "Mon true Tue true Wed true Thu true Fri true Sat true Sun true" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en121'(_Config) ->
   Qry = "for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[D1o]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('2003-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th
            16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th 28th 29th 30th
            31st
         
      ",
   case xqerl_types:string_value(Res) of
             "1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th 28th 29th 30th 31st" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en122'(_Config) ->
   Qry = "for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i return
         format-date($d2, '[Y1o]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1990th 1991st 1992nd 1993rd 1994th 1995th 1996th 1997th 1998th 1999th
            2000th 2001st 2002nd 2003rd 2004th 2005th 2006th 2007th 2008th 2009th 2010th 2011th
            2012th 2013th 2014th 2015th 2016th 2017th 2018th 2019th 2020th
         
      ",
   case xqerl_types:string_value(Res) of
             "1990th 1991st 1992nd 1993rd 1994th 1995th 1996th 1997th 1998th 1999th 2000th 2001st 2002nd 2003rd 2004th 2005th 2006th 2007th 2008th 2009th 2010th 2011th 2012th 2013th 2014th 2015th 2016th 2017th 2018th 2019th 2020th" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en123'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return format-date($d2, '[DW]', 'en', (), ()), ' ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN
            TWELVE THIRTEEN FOURTEEN FIFTEEN SIXTEEN SEVENTEEN EIGHTEEN NINETEEN TWENTY
            TWENTY ONE TWENTY TWO TWENTY THREE TWENTY FOUR TWENTY FIVE TWENTY SIX TWENTY
            SEVEN TWENTY EIGHT TWENTY NINE THIRTY THIRTY ONE
         
      ",
   case xqerl_types:string_value(Res) of
             "ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE THIRTEEN FOURTEEN FIFTEEN SIXTEEN SEVENTEEN EIGHTEEN NINETEEN TWENTY TWENTY ONE TWENTY TWO TWENTY THREE TWENTY FOUR TWENTY FIVE TWENTY SIX TWENTY SEVEN TWENTY EIGHT TWENTY NINE THIRTY THIRTY ONE" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en124'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return format-date($d2, '[Dw]', 'en', (), ()), ' ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            one two three four five six seven eight nine ten eleven
            twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
            twenty one twenty two twenty three twenty four twenty five twenty six twenty
            seven twenty eight twenty nine thirty thirty one
         
      ",
   case xqerl_types:string_value(Res) of
             "one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty twenty one twenty two twenty three twenty four twenty five twenty six twenty seven twenty eight twenty nine thirty thirty one" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en125'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return format-date($d2, '[DWw]', 'en', (), ()), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            One; Two; Three; Four; Five; Six; Seven; Eight; Nine; Ten; Eleven;
            Twelve; Thirteen; Fourteen; Fifteen; Sixteen; Seventeen; Eighteen; Nineteen; Twenty;
            Twenty One; Twenty Two; Twenty Three; Twenty Four; Twenty Five; Twenty Six; Twenty
            Seven; Twenty Eight; Twenty Nine; Thirty; Thirty One
        
      ",
   case xqerl_types:string_value(Res) of
             "One; Two; Three; Four; Five; Six; Seven; Eight; Nine; Ten; Eleven; Twelve; Thirteen; Fourteen; Fifteen; Sixteen; Seventeen; Eighteen; Nineteen; Twenty; Twenty One; Twenty Two; Twenty Three; Twenty Four; Twenty Five; Twenty Six; Twenty Seven; Twenty Eight; Twenty Nine; Thirty; Thirty One" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en126'(_Config) ->
   Qry = " 
         string-join( 
            for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
              return replace(format-date($d2, '[YW]', 'en', (), ()), ' AND ', ' '),
            '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            ONE THOUSAND NINE HUNDRED NINETY; ONE THOUSAND NINE HUNDRED
            NINETY ONE; ONE THOUSAND NINE HUNDRED NINETY TWO; ONE THOUSAND NINE HUNDRED
            NINETY THREE; ONE THOUSAND NINE HUNDRED NINETY FOUR; ONE THOUSAND NINE HUNDRED
            NINETY FIVE; ONE THOUSAND NINE HUNDRED NINETY SIX; ONE THOUSAND NINE HUNDRED
            NINETY SEVEN; ONE THOUSAND NINE HUNDRED NINETY EIGHT; ONE THOUSAND NINE HUNDRED
            NINETY NINE; TWO THOUSAND; TWO THOUSAND ONE; TWO THOUSAND TWO; TWO THOUSAND
            THREE; TWO THOUSAND FOUR; TWO THOUSAND FIVE; TWO THOUSAND SIX; TWO THOUSAND
            SEVEN; TWO THOUSAND EIGHT; TWO THOUSAND NINE; TWO THOUSAND TEN; TWO
            THOUSAND ELEVEN; TWO THOUSAND TWELVE; TWO THOUSAND THIRTEEN; TWO THOUSAND
            FOURTEEN; TWO THOUSAND FIFTEEN; TWO THOUSAND SIXTEEN; TWO THOUSAND
            SEVENTEEN; TWO THOUSAND EIGHTEEN; TWO THOUSAND NINETEEN; TWO THOUSAND
            TWENTY
         
      ",
   case xqerl_types:string_value(Res) of
             "ONE THOUSAND NINE HUNDRED NINETY; ONE THOUSAND NINE HUNDRED NINETY ONE; ONE THOUSAND NINE HUNDRED NINETY TWO; ONE THOUSAND NINE HUNDRED NINETY THREE; ONE THOUSAND NINE HUNDRED NINETY FOUR; ONE THOUSAND NINE HUNDRED NINETY FIVE; ONE THOUSAND NINE HUNDRED NINETY SIX; ONE THOUSAND NINE HUNDRED NINETY SEVEN; ONE THOUSAND NINE HUNDRED NINETY EIGHT; ONE THOUSAND NINE HUNDRED NINETY NINE; TWO THOUSAND; TWO THOUSAND ONE; TWO THOUSAND TWO; TWO THOUSAND THREE; TWO THOUSAND FOUR; TWO THOUSAND FIVE; TWO THOUSAND SIX; TWO THOUSAND SEVEN; TWO THOUSAND EIGHT; TWO THOUSAND NINE; TWO THOUSAND TEN; TWO THOUSAND ELEVEN; TWO THOUSAND TWELVE; TWO THOUSAND THIRTEEN; TWO THOUSAND FOURTEEN; TWO THOUSAND FIFTEEN; TWO THOUSAND SIXTEEN; TWO THOUSAND SEVENTEEN; TWO THOUSAND EIGHTEEN; TWO THOUSAND NINETEEN; TWO THOUSAND TWENTY" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en127'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return replace(format-date($d2, '[Yw]', 'en', (), ()), ' and ', ' '), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            one thousand nine hundred ninety; one thousand nine hundred 
            ninety one; one thousand nine hundred ninety two; one thousand nine hundred 
            ninety three; one thousand nine hundred ninety four; one thousand nine hundred 
            ninety five; one thousand nine hundred ninety six; one thousand nine hundred 
            ninety seven; one thousand nine hundred ninety eight; one thousand nine hundred 
            ninety nine; two thousand; two thousand one; two thousand two; two thousand 
            three; two thousand four; two thousand five; two thousand six; two thousand
            seven; two thousand eight; two thousand nine; two thousand ten; two
            thousand eleven; two thousand twelve; two thousand thirteen; two thousand
            fourteen; two thousand fifteen; two thousand sixteen; two thousand 
            seventeen; two thousand eighteen; two thousand nineteen; two thousand 
            twenty
         
      ",
   case xqerl_types:string_value(Res) of
             "one thousand nine hundred ninety; one thousand nine hundred ninety one; one thousand nine hundred ninety two; one thousand nine hundred ninety three; one thousand nine hundred ninety four; one thousand nine hundred ninety five; one thousand nine hundred ninety six; one thousand nine hundred ninety seven; one thousand nine hundred ninety eight; one thousand nine hundred ninety nine; two thousand; two thousand one; two thousand two; two thousand three; two thousand four; two thousand five; two thousand six; two thousand seven; two thousand eight; two thousand nine; two thousand ten; two thousand eleven; two thousand twelve; two thousand thirteen; two thousand fourteen; two thousand fifteen; two thousand sixteen; two thousand seventeen; two thousand eighteen; two thousand nineteen; two thousand twenty" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en128'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return replace(format-date($d2, '[YWw]', 'en', (), ()), ' [Aa]nd ', ' '), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            One Thousand Nine Hundred Ninety; One Thousand Nine Hundred 
            Ninety One; One Thousand Nine Hundred Ninety Two; One Thousand Nine Hundred 
            Ninety Three; One Thousand Nine Hundred Ninety Four; One Thousand Nine Hundred 
            Ninety Five; One Thousand Nine Hundred Ninety Six; One Thousand Nine Hundred 
            Ninety Seven; One Thousand Nine Hundred Ninety Eight; One Thousand Nine Hundred 
            Ninety Nine; Two Thousand; Two Thousand One; Two Thousand Two; Two Thousand 
            Three; Two Thousand Four; Two Thousand Five; Two Thousand Six; Two Thousand
            Seven; Two Thousand Eight; Two Thousand Nine; Two Thousand Ten; Two
            Thousand Eleven; Two Thousand Twelve; Two Thousand Thirteen; Two Thousand
            Fourteen; Two Thousand Fifteen; Two Thousand Sixteen; Two Thousand 
            Seventeen; Two Thousand Eighteen; Two Thousand Nineteen; Two Thousand 
            Twenty         
         
      ",
   case xqerl_types:string_value(Res) of
             "One Thousand Nine Hundred Ninety; One Thousand Nine Hundred Ninety One; One Thousand Nine Hundred Ninety Two; One Thousand Nine Hundred Ninety Three; One Thousand Nine Hundred Ninety Four; One Thousand Nine Hundred Ninety Five; One Thousand Nine Hundred Ninety Six; One Thousand Nine Hundred Ninety Seven; One Thousand Nine Hundred Ninety Eight; One Thousand Nine Hundred Ninety Nine; Two Thousand; Two Thousand One; Two Thousand Two; Two Thousand Three; Two Thousand Four; Two Thousand Five; Two Thousand Six; Two Thousand Seven; Two Thousand Eight; Two Thousand Nine; Two Thousand Ten; Two Thousand Eleven; Two Thousand Twelve; Two Thousand Thirteen; Two Thousand Fourteen; Two Thousand Fifteen; Two Thousand Sixteen; Two Thousand Seventeen; Two Thousand Eighteen; Two Thousand Nineteen; Two Thousand Twenty" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en129'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return translate(format-date($d2, '[DWo]', 'en', (), ()), '- ', ''), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            FIRST; SECOND; THIRD; FOURTH; FIFTH; SIXTH; SEVENTH; EIGHTH; NINTH;
            TENTH; ELEVENTH; TWELFTH; THIRTEENTH; FOURTEENTH; FIFTEENTH; SIXTEENTH; SEVENTEENTH;
            EIGHTEENTH; NINETEENTH; TWENTIETH; TWENTYFIRST; TWENTYSECOND; TWENTYTHIRD; TWENTYFOURTH;
            TWENTYFIFTH; TWENTYSIXTH; TWENTYSEVENTH; TWENTYEIGHTH; TWENTYNINTH; THIRTIETH;
            THIRTYFIRST
         
      ",
   case xqerl_types:string_value(Res) of
             "FIRST; SECOND; THIRD; FOURTH; FIFTH; SIXTH; SEVENTH; EIGHTH; NINTH; TENTH; ELEVENTH; TWELFTH; THIRTEENTH; FOURTEENTH; FIFTEENTH; SIXTEENTH; SEVENTEENTH; EIGHTEENTH; NINETEENTH; TWENTIETH; TWENTYFIRST; TWENTYSECOND; TWENTYTHIRD; TWENTYFOURTH; TWENTYFIFTH; TWENTYSIXTH; TWENTYSEVENTH; TWENTYEIGHTH; TWENTYNINTH; THIRTIETH; THIRTYFIRST" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en130'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return translate(format-date($d2, '[Dwo]', 'en', (), ()), '- ', ''), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            first; second; third; fourth; fifth; sixth; seventh; eighth; ninth;
            tenth; eleventh; twelfth; thirteenth; fourteenth; fifteenth; sixteenth; seventeenth;
            eighteenth; nineteenth; twentieth; twentyfirst; twentysecond; twentythird; twentyfourth;
            twentyfifth; twentysixth; twentyseventh; twentyeighth; twentyninth; thirtieth;
            thirtyfirst
         
      ",
   case xqerl_types:string_value(Res) of
             "first; second; third; fourth; fifth; sixth; seventh; eighth; ninth; tenth; eleventh; twelfth; thirteenth; fourteenth; fifteenth; sixteenth; seventeenth; eighteenth; nineteenth; twentieth; twentyfirst; twentysecond; twentythird; twentyfourth; twentyfifth; twentysixth; twentyseventh; twentyeighth; twentyninth; thirtieth; thirtyfirst" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en131'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return translate(format-date($d2, '[DWwo]', 'en', (), ()), '- ', ''), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            First; Second; Third; Fourth; Fifth; Sixth; Seventh; Eighth; Ninth;
            Tenth; Eleventh; Twelfth; Thirteenth; Fourteenth; Fifteenth; Sixteenth; Seventeenth;
            Eighteenth; Nineteenth; Twentieth; TwentyFirst; TwentySecond; TwentyThird; TwentyFourth;
            TwentyFifth; TwentySixth; TwentySeventh; TwentyEighth; TwentyNinth; Thirtieth;
            ThirtyFirst
         
      ",
   case xqerl_types:string_value(Res) of
             "First; Second; Third; Fourth; Fifth; Sixth; Seventh; Eighth; Ninth; Tenth; Eleventh; Twelfth; Thirteenth; Fourteenth; Fifteenth; Sixteenth; Seventeenth; Eighteenth; Nineteenth; Twentieth; TwentyFirst; TwentySecond; TwentyThird; TwentyFourth; TwentyFifth; TwentySixth; TwentySeventh; TwentyEighth; TwentyNinth; Thirtieth; ThirtyFirst" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en132'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return translate(replace(format-date($d2, '[YWo]', 'en', (), ()), ' AND ', ' '), '- ', ''), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ONETHOUSANDNINEHUNDREDNINETIETH;
            ONETHOUSANDNINEHUNDREDNINETYFIRST; ONETHOUSANDNINEHUNDREDNINETYSECOND;
            ONETHOUSANDNINEHUNDREDNINETYTHIRD; ONETHOUSANDNINEHUNDREDNINETYFOURTH;
            ONETHOUSANDNINEHUNDREDNINETYFIFTH; ONETHOUSANDNINEHUNDREDNINETYSIXTH;
            ONETHOUSANDNINEHUNDREDNINETYSEVENTH; ONETHOUSANDNINEHUNDREDNINETYEIGHTH;
            ONETHOUSANDNINEHUNDREDNINETYNINTH; TWOTHOUSANDTH; TWOTHOUSANDFIRST;
            TWOTHOUSANDSECOND; TWOTHOUSANDTHIRD; TWOTHOUSANDFOURTH; TWOTHOUSANDFIFTH;
            TWOTHOUSANDSIXTH; TWOTHOUSANDSEVENTH; TWOTHOUSANDEIGHTH; TWOTHOUSANDNINTH;
            TWOTHOUSANDTENTH; TWOTHOUSANDELEVENTH; TWOTHOUSANDTWELFTH;
            TWOTHOUSANDTHIRTEENTH; TWOTHOUSANDFOURTEENTH; TWOTHOUSANDFIFTEENTH;
            TWOTHOUSANDSIXTEENTH; TWOTHOUSANDSEVENTEENTH; TWOTHOUSANDEIGHTEENTH;
            TWOTHOUSANDNINETEENTH; TWOTHOUSANDTWENTIETH
      ",
   case xqerl_types:string_value(Res) of
             "ONETHOUSANDNINEHUNDREDNINETIETH; ONETHOUSANDNINEHUNDREDNINETYFIRST; ONETHOUSANDNINEHUNDREDNINETYSECOND; ONETHOUSANDNINEHUNDREDNINETYTHIRD; ONETHOUSANDNINEHUNDREDNINETYFOURTH; ONETHOUSANDNINEHUNDREDNINETYFIFTH; ONETHOUSANDNINEHUNDREDNINETYSIXTH; ONETHOUSANDNINEHUNDREDNINETYSEVENTH; ONETHOUSANDNINEHUNDREDNINETYEIGHTH; ONETHOUSANDNINEHUNDREDNINETYNINTH; TWOTHOUSANDTH; TWOTHOUSANDFIRST; TWOTHOUSANDSECOND; TWOTHOUSANDTHIRD; TWOTHOUSANDFOURTH; TWOTHOUSANDFIFTH; TWOTHOUSANDSIXTH; TWOTHOUSANDSEVENTH; TWOTHOUSANDEIGHTH; TWOTHOUSANDNINTH; TWOTHOUSANDTENTH; TWOTHOUSANDELEVENTH; TWOTHOUSANDTWELFTH; TWOTHOUSANDTHIRTEENTH; TWOTHOUSANDFOURTEENTH; TWOTHOUSANDFIFTEENTH; TWOTHOUSANDSIXTEENTH; TWOTHOUSANDSEVENTEENTH; TWOTHOUSANDEIGHTEENTH; TWOTHOUSANDNINETEENTH; TWOTHOUSANDTWENTIETH" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en133'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return translate(replace(format-date($d2, '[Ywo]', 'en', (), ()), ' and ', ' '), '- ', ''), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         onethousandninehundredninetieth;
            onethousandninehundredninetyfirst; onethousandninehundredninetysecond;
            onethousandninehundredninetythird; onethousandninehundredninetyfourth;
            onethousandninehundredninetyfifth; onethousandninehundredninetysixth;
            onethousandninehundredninetyseventh; onethousandninehundredninetyeighth;
            onethousandninehundredninetyninth; twothousandth; twothousandfirst;
            twothousandsecond; twothousandthird; twothousandfourth; twothousandfifth;
            twothousandsixth; twothousandseventh; twothousandeighth; twothousandninth;
            twothousandtenth; twothousandeleventh; twothousandtwelfth;
            twothousandthirteenth; twothousandfourteenth; twothousandfifteenth;
            twothousandsixteenth; twothousandseventeenth; twothousandeighteenth;
            twothousandnineteenth; twothousandtwentieth
      ",
   case xqerl_types:string_value(Res) of
             "onethousandninehundredninetieth; onethousandninehundredninetyfirst; onethousandninehundredninetysecond; onethousandninehundredninetythird; onethousandninehundredninetyfourth; onethousandninehundredninetyfifth; onethousandninehundredninetysixth; onethousandninehundredninetyseventh; onethousandninehundredninetyeighth; onethousandninehundredninetyninth; twothousandth; twothousandfirst; twothousandsecond; twothousandthird; twothousandfourth; twothousandfifth; twothousandsixth; twothousandseventh; twothousandeighth; twothousandninth; twothousandtenth; twothousandeleventh; twothousandtwelfth; twothousandthirteenth; twothousandfourteenth; twothousandfifteenth; twothousandsixteenth; twothousandseventeenth; twothousandeighteenth; twothousandnineteenth; twothousandtwentieth" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en134'(_Config) ->
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return translate(replace(format-date($d2, '[YWwo]', 'en', (), ()), ' [Aa]nd ', ' '), '- ', ''), '; ') ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d","xs:date","xs:date('1990-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         OneThousandNineHundredNinetieth;
            OneThousandNineHundredNinetyFirst; OneThousandNineHundredNinetySecond;
            OneThousandNineHundredNinetyThird; OneThousandNineHundredNinetyFourth;
            OneThousandNineHundredNinetyFifth; OneThousandNineHundredNinetySixth;
            OneThousandNineHundredNinetySeventh; OneThousandNineHundredNinetyEighth;
            OneThousandNineHundredNinetyNinth; TwoThousandth; TwoThousandFirst;
            TwoThousandSecond; TwoThousandThird; TwoThousandFourth; TwoThousandFifth;
            TwoThousandSixth; TwoThousandSeventh; TwoThousandEighth; TwoThousandNinth;
            TwoThousandTenth; TwoThousandEleventh; TwoThousandTwelfth;
            TwoThousandThirteenth; TwoThousandFourteenth; TwoThousandFifteenth;
            TwoThousandSixteenth; TwoThousandSeventeenth; TwoThousandEighteenth;
            TwoThousandNineteenth; TwoThousandTwentieth
      ",
   case xqerl_types:string_value(Res) of
             "OneThousandNineHundredNinetieth; OneThousandNineHundredNinetyFirst; OneThousandNineHundredNinetySecond; OneThousandNineHundredNinetyThird; OneThousandNineHundredNinetyFourth; OneThousandNineHundredNinetyFifth; OneThousandNineHundredNinetySixth; OneThousandNineHundredNinetySeventh; OneThousandNineHundredNinetyEighth; OneThousandNineHundredNinetyNinth; TwoThousandth; TwoThousandFirst; TwoThousandSecond; TwoThousandThird; TwoThousandFourth; TwoThousandFifth; TwoThousandSixth; TwoThousandSeventh; TwoThousandEighth; TwoThousandNinth; TwoThousandTenth; TwoThousandEleventh; TwoThousandTwelfth; TwoThousandThirteenth; TwoThousandFourteenth; TwoThousandFifteenth; TwoThousandSixteenth; TwoThousandSeventeenth; TwoThousandEighteenth; TwoThousandNineteenth; TwoThousandTwentieth" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-date-en141'(_Config) ->
   Qry = " format-date($d1, '[Y][EN]', 'en', (), ()), format-date($d2, '[Y][EN]', 'en', (), ()) ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"d1","xs:date","xs:date('1990-12-01')"},
{"d2","xs:date","xs:date('-0055-12-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            \"1990AD\", \"55BC\"
            \"1990CE\", \"55BCE\"
            \"1990A.D.\", \"55B.C.\"
            \"1990C.E.\", \"55B.C.E.\"
         
      ",
 case (   ct:fail(["<assert-deep-eq xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\"1990AD\", \"55BC\"</assert-deep-eq>", Res])) orelse (   ct:fail(["<assert-deep-eq xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\"1990CE\", \"55BCE\"</assert-deep-eq>", Res])) orelse (   ct:fail(["<assert-deep-eq xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\"1990A.D.\", \"55B.C.\"</assert-deep-eq>", Res])) orelse (   ct:fail(["<assert-deep-eq xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\"1990C.E.\", \"55B.C.E.\"</assert-deep-eq>", Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-date-en151'(_Config) ->
   Qry = "format-date($b, '[MNn]', 'xib', (), ())",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"b","xs:date","xs:date('2006-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         [Language: en]March
      ",
   case xqerl_types:string_value(Res) of
             "[Language: en]March" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-en152'(_Config) ->
   Qry = "format-date($b, '[M01]', 'en', 'CB', ())",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"b","xs:date","xs:date('2006-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         [Calendar: AD]03
      ",
   case xqerl_types:string_value(Res) of
             "[Calendar: AD]03" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-date-en153'(_Config) ->
   Qry = "
      	format-date($b, '[M01]', 'en', 'Q{http://calendar.example.com/non-existent-calendar}CB', ())
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"b","xs:date","xs:date('2006-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:string
      ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'format-date-en154'(_Config) ->
   Qry = "
      	declare namespace cal = \"http://calendar.example.com/non-existent-calendar\"; 
      	format-date(xs:date('2006-03-01'), '[M01]', 'en', 'cal:CB', ())
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:string
      ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'format-date-en155'(_Config) ->
   Qry = "
      	format-date($b, '[M01]', 'en', 'Q{}ZODIAC', ())
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"b","xs:date","xs:date('2006-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOFD1340'}) end.
'format-date-en156'(_Config) ->
   Qry = "
      	format-date($b, '[M01]', 'en', 'ZODIAC', ())
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"b","xs:date","xs:date('2006-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOFD1340'}) end.
'format-date-en157'(_Config) ->
   Qry = "
      	format-date($b, '[M01]', 'en', ':w', ())
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"b","xs:date","xs:date('2006-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOFD1340'}) end.
'format-date-en158'(_Config) ->
   Qry = "
      	format-date($b, '[M01]', 'en', 'Q{}1', ())
      ",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"b","xs:date","xs:date('2006-03-01')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOFD1340'}) end.
'format-date-inpt-er1'(_Config) ->
   Qry = "format-date('abc', '[bla]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'format-date-inpt-er2'(_Config) ->
   Qry = "format-date(current-date(), '[bla]', 'en', (), (), 6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'format-date-inpt-er3'(_Config) ->
   Qry = "format-date(current-date(), '[bla]', 'en', (), 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'format-date-1340err'(_Config) ->
   Qry = "format-date(current-date(), '[yY]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOFD1340'}) end.
