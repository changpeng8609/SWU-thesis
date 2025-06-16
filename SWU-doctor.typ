/*
作者：常鹏
email: chang1986@swu.edu.cn
西南大学资源环境学院
Typst版本：0.13.0
日期：2025年06月17日
*/
#import "@preview/numbly:0.1.0": numbly
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

//设置页面格式和默认字体格式
//奇数页结束时插入空白偶数页，确保新页从奇数页开始
#let alwaysstartodd = true 
#let smartpagebreak = () => {
    if alwaysstartodd {
      pagebreak(to: "odd", weak: true)
    } else {
      pagebreak(weak: true)
    }
  }
/// 字体、字号设置
#let 字号 = (
  一英寸: 72pt,
  大特号: 63pt,
  特号: 54pt,
  初号: 42pt,
  小初: 36pt,
  一号: 26pt,
  小一: 24pt,
  二号: 22pt,
  小二: 18pt,
  三号: 16pt,
  小三: 15pt,
  四号: 14pt,
  小四: 12pt,
  五号: 10.5pt,
  小五: 9pt,
  六号: 7.5pt,
  小六: 6.5pt,
  七号: 5.5pt,
  八号: 5pt,
)

#let 字体 = (
  仿宋: ("Times New Roman", "FangSong"),
  宋体: ("Times New Roman", "SimSun"),
  黑体: ("Arial", "SimHei"),
  楷体: ("Times New Roman", "KaiTi"),
  隶书: ("Times New Roman", "LiSu"),
  微软雅黑: ("Microsoft YaHei", "Microsoft YaHei UI"),
  新宋体: ("Times New Roman", "NSimSun"),
  幼圆: ("Microsoft YaHei", "YouYuan"),
  代码: ("New Computer Modern Mono", "Times New Roman", "SimSun"),
)
// 设置默认字体和字号
#set text(font:("Times New Roman", "SimSun"), size: 12pt) 
#set page(
  margin: (top: 3.0cm, left: 2.5cm, right: 2.5cm, bottom: 2.5cm),
  paper: "a4",
  numbering: none,
)

//设置特定字符串的最终显示格式，在输入时无需考虑其格式。用于常用的化学式、斜体等设置
#show "Cu2+":[Cu#super[2+]]
#show "lcc3":[#emph[lcc3]]
#show "Dichomitus squalens":[#emph[Dichomitus squalens]]
#show "Agrobacterium tumefaciens":[#emph[Agrobacterium tumefaciens]]
#show "D. squalens":[#emph[D. squalens]]
#show "A. tumefaciens":[#emph[A. tumefaciens]]
#show "Escherichia coli":[#emph[Escherichia coli]]
#show "E. coli":[#emph[E. coli]]

//论文信息封面，直接修改相关内容
#let cauthor= "张三"
#let eauthor= "San ZHANG"
#let StuNo= "012019320000254" //学号
#let cheader= "西南大学博士学位论文"
#let ctitle= "中文标题"
#let etitle= "English title"
#let cmajor= "你的专业"
#let direction = "你的研究方向"
#let csupervisor1= "李四  教授"
#let csupervisor2= "王五  教授"
#let esupervisor1= "Prof. Si LI"
#let esupervisor2= "Prof. Wu WANG"
#let sub-date= "2025年06月17日" //论文提交日期
#let def-date= "2025年06月21日" //论文答辩日期
#let cdate = "2025年06月" //论文写作日期
#let edate = "June, 2025" //英文论文写作日期
////////设置封面页，此部分不改动//////////////////////////////
#block(inset: (top: 4pt))[
      #grid(
        columns: (1fr, 1fr),
        align(left+top)[
          #image("config/SWU-logo.png",width:33mm)
        ],
        align(right+top)[
          #text(size: 字号.四号)[单位代码#h(2.75em)#underline(extent: 2.5em)[10635]#h(2.5em)] \ 
          #text(size: 字号.四号)[学#h(2em)号#underline()[#StuNo]]
        ]
      )
    ]
#align(center)[#image("config/doctor-学位论文封面.svg", width:75%)] 
#v(20pt)
#align(center)[
#text(size: 字号.二号)[
#ctitle   ]]
#v(20pt)
#set par(leading:0.5em)
#align(left)[#text(size: 字号.小三)[
#h(7em)论文作者：#cauthor

 #h(7em)指导教师：#csupervisor1
 
 #h(12em)#csupervisor2

 #h(7em)学科专业：#cmajor

 #h(7em)研究方向：#direction

 #h(7em)提交论文日期：#sub-date

 #h(7em)论文答辩日期：#def-date

 #h(7em)学位授予单位：西南大学
]]
#v(40pt)
#align(center)[#text(size: 字号.三号, font: 字体.宋体)[
中 国 • 重 庆

#cdate//按照实际修改
]]

#smartpagebreak()
// English cover page
#v(42pt)
#align(center)[#text(size: 字号.初号)[*Southwest University\ Doctoral Dissertation*]]
#v(50pt)
#align(center)[#text(size: 字号.二号)[
#etitle
]]
#v(100pt)
#align(left)[#text(size: 字号.小三)[
#h(8em)Author Name: #eauthor

#h(8em)Supervisor: #esupervisor1

#h(13em) #esupervisor2
]]
#v(150pt)
#align(center)[#text(size: 字号.三号)[

#edate//按照实际修改
]]

#smartpagebreak()

//独创性声明 & 学位论文版权使用授权书

#text(size:字号.四号)[
#align(center)[
  #block(above:2.5em,below:2.5em)[#text(size:字号.二号)[*独创性声明*]]]
#set par(leading:13pt,first-line-indent: 2em, linebreaks:"optimized", justify:true,spacing:0.5em) // 设置段落格式
#align(left+top)[
#text(font:字体.仿宋)[学位论文题目：#underline(offset:3pt)[#ctitle]]
#v(1em)
本学位论文是作者在导师指导下独立完成的研究工作及取得的研究成果，恪守学术诚信，遵守学术准则。对本研究及学位论文撰写曾做出贡献的老师、朋友、同仁在文中作了明确说明并表示衷心感谢。
#v(1.5em)
#set par(leading:13pt,first-line-indent: 0em, linebreaks:"optimized", justify:true,spacing:0.5em) // 设置段落格式
#text(font:字体.仿宋)[
学位论文作者签名：#h(7.7em) 导师签名：#h(6em)
#v(2em)
签字日期：#h(2em)年#h(1em)月#h(1em)日#h(5em)签字日期：#h(2em)年#h(1em)月#h(1em)日
]
]]
#v(4em)
#text(size:字号.四号)[
#align(center)[
  #block(above:2.5em,below:2.5em)[#text(size:字号.二号)[*学位论文版权使用授权书*]]]
#set par(leading:13pt,first-line-indent: 0em, linebreaks:"optimized", justify:true,spacing:0.5em) // 设置段落格式
#h(2em)本学位论文作者完全了解西南大学有关保留、使用学位论文的规定，有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权西南大学研究生院可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。
#v(1em)
#text(font:字体.仿宋)[#h(2em)本论文公开时间：□ 获学位当年；□推迟1年；□推迟2年。
#v(2em)
学位论文作者签名：#h(7.7em) 导师签名：#h(6em)
#v(1em)
签字日期：#h(2em)年#h(1em)月#h(1em)日#h(5em)签字日期：#h(2em)年#h(1em)月#h(1em)日
]]
#smartpagebreak()

// Copyright
#set par(leading:13pt,first-line-indent: 0em, linebreaks:"optimized", justify:true,spacing:0.5em) // 设置段落格式
#text(size:字号.四号)[
  #align(center)[
  #block(above:2.5em,below:2.5em)[#text(size:字号.二号)[*保护知识产权声明*]]]
 #h(2em)本人完全了解西南大学关于对研究生在本校攻读学位期间撰写论文知识产权保护的规定。本人撰写的论文是在导师具体指导下，并得到相关研究经费支持下完成的。具体数据和研究成果归属于导师和作者本人，知识产权单位属西南大学。本人保证毕业后,以本论文数据和资料发表论文或使用论文工作成果时,署名第一单位仍然为西南大学。
 #v(2em)
#text(font:字体.仿宋)[学位论文作者签名：#h(8em)
#v(1em)
签字日期：#h(3em)年#h(1em)月#h(1.5em)日#h(1.5em)
]]
#smartpagebreak()
//目录
#set page(
  footer: context { // 设置页脚
    v(-1em)
    if calc.odd(here().page()) { // 如果是奇数页
      set text(size: 9pt) // 设置字号为小五（9pt）
      set align(right+top) // 设置对齐方式为左对齐
      counter(page).display("i") 
    } else { // 如果是偶数页
      set text(size: 9pt) // 设置字号为小五（9pt）
      set align(left+top)// 设置对齐方式为右对齐
      counter(page).display("i") 
    }
  }
)
#counter(page).update(1)
// 设置目录标题和编号
#align(center)[
#block(above:1em,below:1.5em)[#text(size: 字号.小二,font:"SimHei")[
  目#h(3.5em)录
]]]

#outline(title:none,depth:2,indent: 1em) 

#smartpagebreak()
//无章节编号
#show heading.where(level: 1): it => {
  align(center)[
  #block(above:0.5em,below:1em)[#text(size: 字号.三号,font:"SimHei")[
    #it.body
  ]]]
  }
#set page(numbering: "I")
#set page(
  footer: context { // 设置页脚
    v(-1em)
    if calc.odd(here().page()) { // 如果是奇数页
      set text(size: 9pt) // 设置字号为小五（9pt）
      set align(right+top) // 设置对齐方式为左对齐
      counter(page).display("I") 
    } else { // 如果是偶数页
      set text(size: 9pt) // 设置字号为小五（9pt）
      set align(left+top)// 设置对齐方式为右对齐
      counter(page).display("I") 
    }
  }
)
#counter(page).update(1)
#set page(
    header: context {
    let headings = query(selector(heading).after(here()))
    if calc.odd(here().page()) {
            [
              #align(center)[#text(size: 字号.五号)[#headings.first().body.text]]
              #line(length: 100%, stroke: 2.25pt)
              #v(3pt, weak: true)
              #line(length: 100%, stroke: 0.75pt)
            ]
          } else {[
              #align(center, cheader)
              #v(-0.5em)
              #line(length: 100%, stroke: 2.25pt)
              #v(3pt, weak: true)
              #line(length: 100%, stroke: 0.75pt)
          ]
          }
    }
)
//////////以上这一部分不要修改////////////////////
= 摘要
#set par(leading:10pt,first-line-indent: 2em, linebreaks:auto, justify:true,spacing:1em) // 设置段落格式
#h(2em)此处为中文摘要内容。

*关键词*: 关键词1; 关键词2; 关键词3
#smartpagebreak()

= ABSTRACT
This is the English abstract content.

*Keywords*: word; word; word
#smartpagebreak()

//设置章节标题的样式和页面，此部分不改动

#set heading(numbering: "1.1")
#show heading.where(level: 1): it => { 
  align(center)[
  #block(above:0.5em,below:0.5em)[#text(size: 字号.三号,font:("Times New Roman","SimHei"))[
    第 #context counter(heading).get().first() 章#h(1em)#it.body
  ]]]
  par()[#text(size: 0.01em)[#h(0.0em)]]
  }
#set heading(numbering: numbly(
    "第{1:1}章 ",
    "{1}.{2} ",
    "{1}.{2}.{3} ",
    "{1}.{2}.{3}.{4} ",
    "{1}.{2}.{3}.{4}.{5} ",
  ))

#show heading.where(level: 2): it => {
  block(above:1.5em,below:0em)[#text(size: 字号.四号,font:("Times New Roman","SimHei"))[
#it
 ]]
  par()[#text(size: 0.01em)[#h(0.0em)]]
 }
 
#show heading.where(level: 3): it => {
  block(above:1.5em,below:0em)[#text(size: 字号.小四, font: ("Times New Roman","SimHei"))[
    #it
  ]]
  par()[#text(size: 0.01em)[#h(0.0em)]]
  }

#show heading.where(level: 4): it => {
  block(above:1.5em,below:0em)[#text(size: 字号.五号, font: ("Times New Roman","SimHei"))[
    #it
  ]]
  par()[#text(size: 0.01em)[#h(0.0em)]]
  }
#show heading.where(level: 5): it => {
  block(above:1.5em,below:0em)[#text(size: 字号.五号, font: ("Times New Roman","SimHei"))[
    #it
  ]]
  par()[#text(size: 0.01em)[#h(0.0em)]]
  }

#set page(
  footer: context { // 设置页脚
    v(-0.5em)
    if calc.odd(here().page()) { // 如果是奇数页
      set text(size: 9pt) // 设置字号为小五（9pt）
      set align(right+top) // 设置对齐方式为左对齐
      counter(page).display("1") 
    } else { // 如果是偶数页
      set text(size: 9pt) // 设置字号为小五（9pt）
      set align(left+top)// 设置对齐方式为右对齐
      counter(page).display("1") 
    }
  }
)
//图片和表格设置
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.caption: it => [
#text(size:字号.五号,font:字体.黑体)[#it.supplement#context it.counter.display(it.numbering).#h(0.5em)#it.body
]]

#set table(
  stroke: (x, y) => if y == 0 {
    (top: 1.5pt + black,bottom: 0.8pt + black)
  },
  align: (x, y) => (
    if x > 0 { center }
    else { left }
  )
)
#show table.cell: it => {
  if it.y == 0 {
    set text(size:字号.小五)
    strong(it)
  } else {
    set text(size:字号.小五)
    it
  } 
  }

/*图片、表格使用模板，复制后使用
//双语标题图片
#par()[#text(size: 1em)[#h(0.0em)]]//图表上方空行
#figure(
image("images/1-ATMT-mechanism.svg",width: 100%),
placement: none,// 设置图片位置为none(当前插入位置不变），可选参数auto,top,bottom
caption: [例图1标题//中文图表标题

Figure #context counter(heading.where(level:1)).display("1")-#context counter(figure.where(kind: figure)).display("1"). 
English caption 1//英文图表标题

#text(font:字体.宋体,size:字号.小五)[
中文图注//中文图表说明

figure legend//英文图表说明
]
],
supplement: [图#context counter(heading.where(level:1)).display("1")-],
kind: figure
)<fig:例图1>// 图表标签
#par()[#text(size: 1em)[#h(0.0em)]]//图表下方空行

//双语标题表格
#par()[#text(size: 1em)[#h(0.0em)]]//表格上方空行
#figure(
  placement: none,// 设置图片位置为none(当前插入位置不变），可选参数auto,top,bottom
table(
    columns: 3,
    [Name], [Age], [Strength],
    table.cell(
      rowspan: 3,
      align: horizon,
      rotate(-90deg, reflow: true)[
        year
      ],
    ),
    [Name], [Age], 
    [Hannes], [Strength],
    table.cell(colspan: 2)[24],
    table.hline(start: 0,stroke:1.5pt),
    table.cell(colspan:3,align: left)[#text(字号.六号)[table note:]]// 表格注释
    ),
caption: [例表1//中文表格标题

Table #context counter(heading.where(level:1)).display("1")-#context counter(figure.where(kind: table)).display(). 
English caption 1//英文表格标题
],
supplement: [表#context counter(heading.where(level:1)).display("1")-],
kind: table,
)<tab:例表1>// 表格标签
#par()[#text(size: 1em)[#h(0.0em)]]//表格下方空行



//无标题表格
#par()[#text(size: 1em)[#h(0.0em)]]//表格上方空行
#align(center)[
  #table(
    columns: 3,
    [Name], [Age], [Strength],
    table.cell(
      rowspan: 3,
      align: horizon,
      rotate(-90deg, reflow: true)[
        year
      ],
    ),
    [Name], [Age], 
    [Hannes], [Strength],
    table.cell(colspan: 2)[24],
    table.hline(start: 0,stroke:1.5pt)
)]
#par()[#text(size: 1em)[#h(0.0em)]]//表格下方空行
*/

// 设置段落格式
#set par(leading:10pt,first-line-indent: 2em, linebreaks:auto, justify:true,spacing:1em) 
//页码格式设置
#counter(page).update(1)
#set page(numbering: "1")
///////////////////上述设置命令不要修改////////////////////
= 文献综述
双语标题图片示例见@fig:例图1，复制后使用。

#par()[#text(size: 1em)[#h(0.0em)]]
#figure(
image("images/1-ATMT-mechanism.svg",width: 100%),
placement: none,// 设置图片位置为无改动，可选参数auto,top,bottom
caption: [例图1标题

Figure #context counter(heading.where(level:1)).display("1")-#context counter(figure.where(kind: figure)).display("1"). 
English caption 1

#text(font:字体.宋体,size:字号.小五)[
中文图注

figure legend]
],
supplement: [图#context counter(heading.where(level:1)).display("1")-],
kind: figure
)<fig:例图1>
#par()[#text(size: 1em)[#h(0.0em)]]

#lorem(50)

双语标题表格示例见@tab:例表1，复制后使用。
#par()[#text(size: 1em)[#h(0.0em)]]
#figure(
  placement: none,
table(
    columns: 3,
    [Name], [Age], [Strength],
    table.cell(
      rowspan: 3,
      align: horizon,
      rotate(-90deg, reflow: true)[
        year
      ],
    ),
    [Name], [Age], 
    [Hannes], [Strength],
    table.cell(colspan: 2)[24],
    table.hline(start: 0,stroke:1.5pt),
    table.cell(colspan:3,align: left)[#text(字号.六号)[table note:]]
    ),
caption: [例表1

Table #context counter(heading.where(level:1)).display("1")-#context counter(figure.where(kind: table)).display(). English caption 1],
supplement: [表#context counter(heading.where(level:1)).display("1")-],
kind: table,
)<tab:例表1>
#par()[#text(size: 1em)[#h(0.0em)]]

#lorem(20)

== 2级标题
#lorem(50)

=== 3级标题
#lorem(50)

==== 4级标题
#lorem(50)
#smartpagebreak()//分页符
= 引言
#counter(figure.where(kind: table)).update(0)//重置表格计数器
#counter(figure.where(kind: figure)).update(0)//重置图片计数器

#lorem(50)

== 研究目的和意义
#lorem(50)

=== 研究目的
#lorem(50)

=== 研究意义
#lorem(50)

== 研究内容
#lorem(50)

== 技术路线图
#par()[#text(size: 1em)[#h(0.0em)]]//图表上方空行
#figure(
image("images/1-ATMT-mechanism.svg",width: 100%),
placement: none,
caption: [例图1标题

Figure #context counter(heading.where(level:1)).display("1")-#context counter(figure.where(kind: figure)).display("1"). 
English caption 1

#text(font:字体.宋体,size:字号.小五)[
中文图注

figure legend]
],
supplement: [图#context counter(heading.where(level:1)).display("1")-],
kind: figure
)<fig:技术路线图>
#par()[#text(size: 1em)[#h(0.0em)]]//图表下方空行

#lorem(50)

#smartpagebreak()

= 实验材料与方法
#counter(figure.where(kind: table)).update(0)//重置表格计数器
#counter(figure.where(kind: figure)).update(0)//重置图片计数器

#lorem(50)

#smartpagebreak()

= 研究结果与分析

参考文献引用@wang2010guide @wang2010guide2 参考文献引用@kopka2004guide   

#smartpagebreak()

= 结论与展望
#counter(figure.where(kind: table)).update(0)//重置表格计数器
#counter(figure.where(kind: figure)).update(0)//重置图片计数器

结论与展望
#smartpagebreak()

//无章节编号////此处不修改/////////////////////////////////////////////////////////
#show heading.where(level: 1): it => {
  align(center)[
  #block(above:1.5em,below:0em)[#text(size: 字号.三号,font:"SimHei")[
    #it.body
  ]]]
  par()[#text(size: 0.01em)[#h(0.0em)]]
  }
 
#set heading(numbering: none)
// 设置段落格式
#set par(leading:10pt,first-line-indent: 2em, linebreaks:auto, justify:true,spacing:1em) 
////上述设置命令不要修改//////////////////////////////////////////////////////////

= 参考文献
#bibliography("ref.bib",title:none,full:true,style: "config/gb-t-7714-2015-author-date-no-doi.csl")
// 使用GB/T 7714-2015格式的参考文献样式
#smartpagebreak()

= 附录
#counter(figure.where(kind: table)).update(0)//重置表格计数器
#counter(figure.where(kind: figure)).update(0)//重置图片计数器

#lorem(50)

#smartpagebreak()

= 致谢
#lorem(50)

#smartpagebreak()

= 在学期间所发表的文章
1) paper1
