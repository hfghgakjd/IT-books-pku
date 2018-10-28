select * from cdsgus where CtfId = '320202199412233521';
select * from cdsgus where Name = '周玉风';
select * from cdsgus where Mobile = '手机号';









/*涉及隐私，勿滥传播，仅供学习。
本数据库开房总体量数据为20050144人次
目的：开房的人口姓氏占比是否与全国总人口姓氏占比有线性对比关系？
理论依据，此数据库是2013年及其以前时间段的，故姓氏统计也应在此时间段前后，具有一定可信性。
据2014年，国家统计局的数据显示，“王李张刘陈杨黄赵周吴徐孙马胡朱郭何罗高林”为全国前20大姓氏。
　1 王 9468万 7.10%
　2 李 9276万 6.96%
　3 张 8550万 6.42%
*/
select * from cdsgus where Name like '王%';
/*王姓人数合计1514373，占比7.55%  */
select * from cdsgus where Name like '张%';
/*张姓人数总计1397785，占比6.97%  */
select * from cdsgus where Name like '李%';
/*李姓人数合计1284844，占比6.40%  */

/*数据分析：在数据库中，王姓有1514373人，依旧是占比最大，占比7.55%，与全国总占比7.10%，相差不大；
而李姓和张姓位置发生了调换，但还是都在6%多的占。总体来说，分析数据能大致符合全国姓氏总排名的趋势。
从侧面印证了王李张确实是中国最人丁兴旺的三大姓氏族群。
深层分析：
下面分析偏差原因，
首先这些酒店旅馆毕竟不是全国范围的分布，所以开房数据不具备全国范围姓，这是与国家统计局的数据有着本质区别；
其次中国姓氏有着比较明显的区域分布差异，有些省份是某些姓氏的人口大省，可能占比会达到省人口的9%以上，所以位次有不同变化。
以安徽为例，在安徽省“王”也是第一大姓，有近538万人，另外“张”跑到了“李”前面。安徽省排在前五名的姓氏与全国前五相同，位次有所变化。
皖江流域的大部分地区如安庆、池州、合肥、芜湖、马鞍山等市大姓人口分布差异不大，
位列前二十位的大姓虽然地区间人口排序不完全一致，但姓氏总数是基本一致的。

再举一个栗子，张姓在全国的分布主要集中于河南、山东、河北三省，
大约占张姓总人口的27.5%，其次分布于江苏、四川、安徽、辽宁、黑龙江、湖北六省，又集中了28.5%。河南居住了张姓总人口的10.1%，
为当代张姓第一大省。全国形成了以长江为界的高比率的北方张姓区和低比率的南方张姓区。