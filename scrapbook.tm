<TeXmacs|2.1.4>

<style|generic>

<\body>
  \;

  <\theorem>
    Let <math|V> be<space|1em>vector space over a field <math|F>,
    <math|I<rsub|1>,I<rsub|2>> finite such that
    <math|I<rsub|1><big|cap>I<rsub|2>> and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a family of sub-spaces of <math|V> then\ 

    <\equation*>
      <big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>=<around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>
    </equation*>

    \;
  </theorem>

  <\proof>
    If <math|v\<in\><big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>>
    then there exists a <with|font-series|bold|unique>
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2>>
    <math|v<rsub|i>\<in\>V<rsub|i>> and <math|v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>v<rsub|i>>.
    Define now

    <\equation*>
      <around*|{|v<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V<text|
      by >v<rsup|1><rsub|i>=v<rsub|i><text| and
      ><around*|{|v<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V<text|
      by <math|v<rsup|2><rsub|i>=v<rsub|i>> so that >\<forall\>i\<in\>I<text|
      >v<rsup|1><rsub|i>\<in\>V<rsub|i>\<wedge\>v<rsup|2><rsub|i>\<in\>V<rsub|i>
    </equation*>

    and <math|v<rsup|1>,v<rsup|2>> by\ 

    <\equation>
      <label|eq 12.10.131>v<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i><text|
      and >v<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>
    </equation>

    Then we have\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>v<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>=v<rsup|1>+v<rsup|2>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 12.11.131>v=v<rsup|1>+v<rsup|2>
    </equation>

    Assume that there exists <math|<around*|{|w<rsub|i><rsup|1>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>,
    <math|<around*|{|w<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1>>
    <math|w<rsup|1><rsub|i>\<in\>V<rsub|i>>,
    <math|\<forall\>i\<in\>I<rsub|2>> <math|w<rsup|2><rsub|i>\<in\>V<rsub|i>>
    and <math|v<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i>>,
    <math|v<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>>.
    Define then\ 

    <\equation*>
      <around*|{|w<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V<text|
      by >w<rsub|i>=<choice|<tformat|<table|<row|<cell|w<rsup|1><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|w<rsup|2><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
    </equation*>

    then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>w<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>w<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>=v<rsup|1>+v<rsup|2>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.11.131>]>>v
    </equation*>

    By the <with|font-series|bold|uniqueness> of
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    we must then have that <math|\<forall\>i\<in\>I>
    <math|v<rsub|i>=w<rsub|i>>, so <math|\<forall\>i\<in\>I<rsub|1>>
    <math|v<rsup|1><rsub|i>=v<rsub|i>=w<rsub|i>=w<rsup|1><rsub|i>> and
    <math|\<forall\>i\<in\>I<rsub|2>> <math|v<rsup|2><rsub|i>=v<rsub|i>=w<rsub|i>=w<rsup|2><rsub|i>>.
    Proving that\ 

    <\equation>
      <label|eq 12.12.131>v<rsup|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|
      and >v<rsup|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i><text|
      and >v=v<rsup|1>+v<rsup|2>
    </equation>

    Assume now that there exists <math|u<rsup|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>>
    and <math|u<rsup|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>>
    such that <math|v=u<rsub|1>+u<rsub|2>> then there exists
    <with|font-series|bold|unique> <math|<around*|{|u<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>,
    <math|<around*|{|u<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1>>
    <math|u<rsup|1><rsub|i>\<in\>V<rsub|i>>,
    <math|\<forall\>u\<in\>I<rsub|2>> <math|u<rsup|2><rsub|i>\<in\>V<rsub|i>>
    and <math|u<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|1><rsub|i>>,
    <math|u<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>u<rsup|2><rsub|i>>.
    Define then

    <\equation*>
      <around*|{|z<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V<text|
      by >z<rsub|i>=<choice|<tformat|<table|<row|<cell|u<rsup|1><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|u<rsup|2><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
    </equation*>

    then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>z<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>z<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>z<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>u<rsup|2><rsub|i>=u<rsup|1>+u<rsup|2>=v
    </equation*>

    By the \ <with|font-series|bold|uniqueness> of
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    we must then have that <math|\<forall\>i\<in\>I>
    <math|v<rsub|i>=z<rsub|i>>, so <math|\<forall\>i\<in\>I<rsub|1>>
    <math|v<rsup|1><rsub|i>=v<rsub|i>=z<rsub|i>=u<rsup|1><rsub|i>> and
    <math|\<forall\>i\<in\>I<rsub|2>> <math|v<rsup|1><rsub|i>=v<rsub|i>=z<rsub|i>=u<rsup|2><rsub|i>>.
    Hence\ 

    <\equation*>
      u<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|1><rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i><rsup|1>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.10.131>]>>v<rsup|1><text| and
      >u<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|2><rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i><rsup|2>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.10.131>]>>v<rsup|2>
    </equation*>

    which together with [eq: <reference|eq 12.12.131>] proves that
    <math|v\<in\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>>.
    As <math|v\<in\><big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>>
    was choosen arbitrary it follows that\ 

    <\equation>
      <label|eq 12.13.131><big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>\<subseteq\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>
    </equation>

    For the opposite inclusion, let <math|v\<in\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>>
    then there exists <with|font-series|bold|unique>
    <math|v<rsub|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>> and
    <math|v<rsub|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>> such
    that\ 

    <\equation>
      <label|eq 12.14.131>v=v<rsub|1>+v<rsub|2>
    </equation>

    As <math|v<rsub|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>> and
    <math|v<rsub|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>> there
    exist <with|font-series|bold|unique> <math|<around*|{|v<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>
    , <math|<around*|{|v<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1>>
    <math|v<rsup|1><rsub|i>\<in\>V<rsub|i>>,
    <math|\<forall\>i\<in\>I<rsub|2>> <math|v<rsup|2><rsub|i>\<in\>V<rsub|i>>
    and <math|v<rsub|1>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>>,
    <math|v<rsub|2>=<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>>.
    Define now\ 

    <\equation*>
      <around*|{|u<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V<text|
      by >u<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsup|1><rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|v<rsup|2><rsub|i><text| if
      >i\<in\>I<rsub|2>>>>>>
    </equation*>

    then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>u<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>u<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>u<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>=v<rsub|1>+v<rsub|2>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.14.131>]>>v
    </equation*>

    proving\ 

    <\equation>
      <label|eq 12.15.131>v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>u<rsub|i><text|
      where >\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2><text| we have>
      u<rsub|i>\<in\>V<rsub|i>
    </equation>

    Assume that there exist another <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2>\<in\>V> and
    <math|v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>w<rsub|i>>.
    Define then\ 

    <\equation*>
      <around*|{|w<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V<text|
      by >w<rsup|1><rsub|i>=w<rsub|i>\<in\>V<rsub|i><infix-and><around*|{|w<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V<text|
      by >w<rsup|2><rsub|i>\<in\>V<rsub|i>
    </equation*>

    and <math|w<rsup|1>,w<rsup|2>> by \ 

    <\equation*>
      w<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i><text| and
      >w<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>
    </equation*>

    \;
  </proof>

  <\lemma>
    Let <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
    satifying <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i>> and
    <math|<around*|[|a<rsub|i+1>,b<rsub|i+1>|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>>
    then\ 

    <\enumerate-numeric>
      <item><math|\<exists\>a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b>
      such that <math|<around*|[|a,b|]>=<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>>.

      <item>If <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|b<rsub|i>-a<rsub|i>|)>=0>
      then there exist a <math|a\<in\>\<bbb-R\>> such that
      <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|{|a|}>>
    </enumerate-numeric>
  </lemma>

  <\proof>
    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have that
    <math|<around*|[|a<rsub|i+1>,b<rsub|i+1>|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>>
    it follows that <math|a<rsub|i>\<leqslant\>a<rsub|i+1>\<wedge\>b<rsub|i+1>\<leqslant\>b<rsub|i>>
    so that <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is
    a increasing sequence and <math|<around*|{|b<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is decreasing sequence. Hence by [theorem: <reference|sequence increasing
    decreasing consequence>] we have that\ 

    <\equation>
      <label|eq 14.110.151><text|If >n,m\<in\>\<bbb-N\><rsub|0><text| with
      >n\<leqslant\>m<text| then >a<rsub|n>\<leqslant\>a<rsub|m>\<leqslant\>b<rsub|m>\<leqslant\>b<rsub|n>
    </equation>

    We have now\ 

    <\enumerate>
      <item>From [eq: <reference|eq 14.110.151>] it follows that
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|a<rsub|0>\<leqslant\>a<rsub|n>\<leqslant\>b<rsub|n>\<leqslant\>b<rsub|0>>
      so that <math|A=<around*|{|a<rsub|n>\|n\<in\>\<bbb-N\><rsub|0>|}>> is
      bounded above by <math|b<rsub|0>> and
      <math|B=<around*|{|b<rsub|n>\|n\<in\>\<bbb-N\><rsub|0>|}>> is bounded
      below by <math|a<rsub|0>>. As <math|\<bbb-R\>> is conditional complete
      [see theorem: <reference|complex RC is conditional complete>]
      <math|a=sup<around*|(|A|)>> and <math|b=inf<around*|(|B|)>> exist and

      <\equation>
        <label|eq 14.111.151>a=sup<around*|(|A|)>\<leqslant\>b<rsub|0><text|
        and >a<rsub|0>\<leqslant\>inf<around*|(|B|)>=b<text|>
      </equation>

      As <math|sup<around*|(|A|)>> is a upper bound of <math|A> and
      <math|inf<around*|(|B|)>> is a lower bound of <math|B> we have

      <\equation*>
        \<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        >a<rsub|i>\<leqslant\>a<text| and >b\<leqslant\>b<rsub|i><text| hence
        ><around*|[|a,b|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>
      </equation*>

      so that\ 

      <\equation>
        <label|eq 14.112.151><around*|[|a,b|]>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>
      </equation>

      For the opposite inclusion, let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|a<rsub|i>\<leqslant\>x\<leqslant\>b<rsub|i>> so that <math|x> is
      a upper bound of <math|A> and <math|x> is a lower bound of <math|B> so
      that <math|a=sup<around*|(|A|)>\<leqslant\>x\<wedge\>x\<leqslant\>inf<around*|(|B|)>=b>
      proving that <math|x\<in\><around*|[|a,b|]>>, hence
      \ <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>\<subseteq\><around*|[|a,b|]>>
      which together wit [eq: <reference|eq 14.112.151>] results in\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>
      </equation*>

      <item>Assume that <math|a\<less\>b> then
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|a<rsub|i>\<less\>a\<less\>b\<leqslant\>b<rsub|i>> so that
      <math|0\<less\>b-a\<less\>b<rsub|i>-a<rsub|i>>. As
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|b<rsub|i>-a<rsub|i>|)>=0>
      there exist a <math|N\<in\>\<bbb-N\><rsub|0>> such that
      <math|b<rsub|N>-a<rsub|N>=<around*|\||b<rsub|N>-a<rsub|N>|\|>\<less\>b-a>
      a contradiction. Hence we must have

      <\equation>
        <label|eq 14.113.151>b\<leqslant\>a
      </equation>

      Assume that <math|b\<less\>a> then as <math|b=inf<around*|(|B|)>> there
      exist a <math|i\<in\>\<bbb-N\><rsub|0>> such that
      <math|b\<leqslant\>b<rsub|i>\<less\>a>, further as
      <math|a=sup<around*|(|A|)>> there exist a
      <math|j\<in\>\<bbb-N\><rsub|0>> such that
      <math|b\<leqslant\>b<rsub|i>\<less\>a<rsub|j>\<leqslant\>a>. For
      <math|i,j> we have now the following possibilities to consider:\ 

      <\description>
        <item*|<math|i\<leqslant\>j>>Then we have
        <math|b<rsub|j>\<leqslant\>b<rsub|i>\<less\>a<rsub|j>> contradicting
        <math|a<rsub|j>\<leqslant\>b<rsub|j.>>

        <item*|<math|j\<less\>i>>Then we have
        <math|b<rsub|i>\<less\>a<rsub|j>\<leqslant\>a<rsub|i>> contradicting
        <math|a<rsub|i>\<leqslant\>b<rsub|i>>.
      </description>

      As in all cases we reach a contradiction the assumption must be false,
      hence <math|a\<leqslant\>b> which together with [eq: <reference|eq
      14.113.151>] proves that <math|a=b>, hence
      <math|<around*|[|a,b|]>=<around*|{|a|}>>, combining this with [eq:
      <reference|eq 14.113.151>] gives finally:\ 

      <\equation*>
        <big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|{|a|}>
      </equation*>
    </enumerate>
  </proof>

  \;

  <\lemma>
    <label|series lemma 14.342>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)>\\<around*|{|\<varnothing\>|}>>
    a finite family of non empty subsets of <math|\<bbb-R\>> such that
    <math|\<exists\>s\<in\>\<bbb-R\>> such that
    <math|\<forall\><around*|(|x<rsub|0>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>>
    we have <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\>s> then it
    follows that <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    <math|sup<around*|(|A<rsub|i>|)>> exists and
    <math|<big|sum><rsub|i=0><rsup|n>sup<around*|(|A<rsub|i>|)>\<leqslant\>s>
  </lemma>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)>\\<around*|{|\<varnothing\>|}><text|
      satifies >\<exists\>s\<in\>\<bbb-R\><text| such that
      >\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i><text|
      we have ><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\>s<text| then
      >\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}><text|
      >sup<around*|(|A<rsub|i>|)><text| exist and
      ><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\>s|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>Let <math|y\<in\>A<rsub|0>> then
      <math|y=<around*|(|x|)>\<in\><big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>>
      so that <math|x=<big|sum><rsub|i=0><rsup|0>y<rsub|0>\<leqslant\>s>
      proving that <math|A<rsub|0>> is bounded above by <math|s>, hence, as
      also <math|A<rsub|0>\<neq\>\<varnothing\>>, it follows from the
      conditional completeness of <math|\<bbb-R\>> [see theorem:
      <reference|complex RC is conditional complete>] that
      <math|sup<around*|(|A<rsub|0>|)>> exists and
      <math|sup<around*|(|A<rsub|0>|)>\<leqslant\>s\<Rightarrow\><big|sum><rsub|i=0><rsup|0>sup<around*|(|A<rsub|i>|)>\<leqslant\>s>.
      Hence <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)>\\<around*|{|\<varnothing\>|}>>
      be such that <math|\<exists\>s\<in\>\<bbb-R\>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>A<rsub|i>>
      we have <math|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>\<leqslant\>s>. As
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n+1|}>>
      <math|A<rsub|i>\<neq\>\<varnothing\>>
      <math|<big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>\<neq\>\<varnothing\>>,
      hence there exist a <math|y\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>>.
      Then <math|\<forall\>z\<in\>A<rsub|n+1>> we have that
      <math|u=<around*|(|y<rsub|0>,\<ldots\>,y<rsub|n>,z|)>\<in\><big|prod><rsub|i=0><rsup|n+1>A<rsub|i>>
      so that <math|z+<big|sum><rsub|i=0><rsup|n>y<rsub|i>=<big|sum><rsub|i=0><rsup|n+1>u<rsub|i>\<leqslant\>s>
      or <math|z\<leqslant\>s-<big|sum><rsub|i=0><rsup|n>y<rsub|i>>. So
      <math|A<rsub|n+1>> is bounded above by
      <math|s-<big|sum><rsub|i=0><rsup|n>y<rsub|i>> which, as
      <math|A<rsub|n+1>\<neq\>\<varnothing\>>, proves by [theorem:
      <reference|complex RC is conditional complete>] that\ 

      <\equation*>
        sup<around*|(|A<rsub|n+1>|)><text| exist and
        >sup<around*|(|A<rsub|n+1>|)>\<leqslant\>s-<big|sum><rsub|i=0><rsup|n>y<rsub|i>
      </equation*>

      As <math|A<rsub|n+1>\<neq\>\<varnothing\>> there exist a
      <math|w\<in\>A<rsub|n+1>>. Take <math|v\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>>
      then <math|r=<around*|(|v<rsub|0>,\<ldots\>,v<rsub|n>,w|)>\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>A<rsub|i>>
      so that <math|w+<big|sum><rsub|i=0><rsup|n>v<rsub|i>=<big|sum><rsub|i=0><rsup|n+1>r<rsub|i>\<leqslant\>s>
      proving that

      <\equation*>
        <big|sum><rsub|i=0><rsup|n>v<rsub|i>\<leqslant\>s-w
      </equation*>

      Hence, as <math|n\<in\>S>, we have that

      <\equation*>
        \<forall\>i\<in\><around*|{|0,\<ldots\>,n|}><text|
        >sup<around*|(|A<rsub|i>|)><text| exist and
        ><big|sum><rsub|i=0><rsup|n>sup<around*|(|A<rsub|i>|)>\<leqslant\>s-w
      </equation*>

      So <math|<big|sum><rsub|i=0><rsup|n+1>sup<around*|(|A<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n>sup<around*|(|A<rsub|i>|)>+sup<around*|(|A<rsub|n+1>|)>\<leqslant\>s-w+sup<around*|(|A<rsub|n+1>|)>>,
      as further <math|w\<leqslant\>sup<around*|(|A<rsub|n+1>|)>\<Rightarrow\>-sup<around*|(||)>>
    </description>

    \ 
  </proof>

  \;

  <\theorem>
    <label|countable union of a finite family of countable sets is
    countable>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is such that
    <math|I\<neq\>\<varnothing\>\<wedge\>I> is finite and
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is countable then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable. In other words the
    union of a finite family of countable sets is countable. If in addition
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>\<neq\>\<varnothing\>> and
    <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable.
  </theorem>

  <\proof>
    As <math|I> is finite and non empty there exist
    <math|n<rsub|0>\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> and a bijection
    <math|\<beta\>:n<rsub|0>\<rightarrow\>I>. Further as
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is countable there exist a
    surjection <math|\<alpha\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|i>>
    [see theorem: <reference|countable set conditions (1)>].] Define now the
    function\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      by >g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>
    </equation*>

    Now if <math|y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> there exist a
    <math|l\<in\>I> such that <math|y\<in\>A<rsub|l>>, as <math|\<beta\>> is
    bijective there exists a <math|n\<in\>n<rsub|0>> such that
    <math|\<beta\><around*|(|n|)>=l>. As <math|\<alpha\><rsub|l>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|l>>
    is a surjection there exist a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<alpha\><rsub|l><around*|(|m|)>=y>. So

    <\equation*>
      g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>=\<alpha\><rsub|l><around*|(|m|)>=y
    </equation*>

    which proves that\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Now by [theorem: <reference|denumerable product nxN is denumerable>]
    there exist a bijection <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>n<rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that\ 

    <\equation*>
      g\<circ\>\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Using [theorem: <reference|countable set conditions (1)>] it follows that

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|i><text| is countable>
    </equation*>

    Further if <math|\<forall\>i\<in\>I> <math|A<rsub|i>\<neq\>\<varnothing\>>
    and <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> then we can use a
    consequence of the axiom of choice [see theorem: <reference|choice Axiom
    of choice consequences>] to find a function\ 

    <\equation*>
      \<cal-C\>:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text| such
      that >\<forall\>i\<in\>I<text| >\<cal-C\><around*|(|i|)>\<in\>A<rsub|i>
    </equation*>

    If <math|\<cal-C\><around*|(|i|)>=\<cal-C\><around*|(|j|)>> then
    <math|\<cal-C\><around*|(|i|)>\<in\>A<rsub|i>> and
    <math|\<cal-C\><around*|(|i|)>=C<around*|(|j|)>\<in\>A<rsub|j>> so that
    <math|\<cal-C\><around*|(|i|)>\<in\>A<rsub|i><big|cap>A<rsub|j>\<Rightarrow\>A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>>.
    hence we must have <math|i=j> [if <math|i\<neq\>j> then
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>]. So
    <math|\<cal-C\>:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>> is a
    injection and <math|\<cal-C\>:I\<rightarrow\>\<cal-C\><around*|(|I|)>> is
    a bijection or <math|I\<approx\>\<cal-C\><around*|(|I|)>>, as <math|I> is
    countable it follows from [theorem: <reference|equipotence finite,
    denumerable , countable>] that <math|\<cal-C\><around*|(|I|)>> is
    denumerable. As <math|\<cal-C\><around*|(|I|)>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
    we have by [theorem: <reference|set containing a denumerable set is
    infinite>] that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is not finite,
    so as <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable we have
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable.
  </proof>

  \;

  We can now use the Baire category theorem to prove the open mapping
  theorem.

  \;

  <\theorem>
    <label|complete open mapping theorem><index|open mapping
    theorem><dueto|Open Mapping Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be Banach spaces and <math|L:X\<rightarrow\>Y> a
    <with|font-series|bold|surjective continuous linear> function then
    <math|L:X\<rightarrow\>Y> is a <with|font-series|bold|open> function.
  </theorem>

  <\proof>
    For <math|L> we have tow possible cases:

    <\description>
      <item*|<math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=0>>Then
      we have by [theorem: <reference|continuity operator norm (1)>]
      <math|\<forall\>x\<in\>X> <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>=0>
      proving that <math|\<forall\>x\<in\>X>
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>=<around*|{|0|}>>, as
      <math|L> is a surjection it follows that <math|Y=<around*|{|0|}>>. Let
      <math|U> be a open set in <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
      then <math|L<around*|(|U|)>=<around*|{|0|}>=Y> which is open in
      <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>.
      So it follows that in this case <math|L:X\<rightarrow\>Y> is a open
      function.

      <item*|<math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<neq\>0>>We
      split the proof in a set of smaller proofs.\ 

      <\equation>
        <label|eq 14.241.164>\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+><text|
        there exist a >\<lambda\>\<in\>\<bbb-R\><rsup|+><text| such that
        >B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<wide-bar\>>
      </equation>

      <\proof>
        Let <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> and <math|x\<in\>X> then
        using [theorem: <reference|complex Archimedean property consequence
        (1)>] there exist a <math|n\<in\>\<bbb-N\>> such that
        <math|<frac|2|\<delta\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>n>,
        hence <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\><frac|n\<cdot\>\<delta\>|2>>.
        Let <math|y=<frac|x|n>> then <math|x=n\<cdot\>y> and

        <\equation*>
          <around*|\<\|\|\>|y|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<frac|x|n>|\<\|\|\>><rsub|X>=<frac|1|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\><frac|1|n>\<cdot\><frac|n\<cdot\>\<delta\>|2>=<frac|\<delta\>|2>
        </equation*>

        proving that <math|x\<in\>n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>>.
        Hence we have\ 

        <\equation>
          <label|eq 14.242.164>X=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>
        </equation>

        As <math|L> is surjective

        <\eqnarray*>
          <tformat|<table|<row|<cell|Y>|<cell|=>|<cell|L<around*|(|X|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|family image and preimage>]>>>|<cell|<big|cup><rsub|n\<in\>\<bbb-N\>>L<around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|linear mapping sum of
          sets>]>>>|<cell|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|Y>>>>
        </eqnarray*>

        hence\ 

        <\equation>
          <label|eq 14.243.164>Y=<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>
        </equation>

        Further <math|Y\<neq\>\<varnothing\>> [as <math|0\<in\>Y>] and
        <math|Y=Y<rsup|\<circ\>>> [using [theorem: <reference|topology open
        set and interior>] and the fact that <math|U> is open] so that by
        [eq: <reference|eq 14.243.164>]\ 

        <\equation>
          <label|eq 14.246.165>\<varnothing\>\<neq\><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>
        </equation>

        If <math|\<forall\>n\<in\>\<bbb-N\>>
        <math|<around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>=\<varnothing\>>
        then we have, as by [theorem: <reference|complete Baire Category>]
        <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>=<around*|\<langle\>|X,d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>|\<rangle\>>>
        is a Baire space, that <math|><math|<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)>=\<varnothing\>>,
        contradicting [eq: <reference|eq 14.246.165>]. Hence there exist a
        <math|n\<in\>\<bbb-N\>> such that
        <math|<around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>\<neq\>\<varnothing\>>.
        So there exist a <math|z\<in\><around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>and
        as <math|<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>
        is open there exist by [theorem: <reference|normed space and open
        sets>] a <math|\<beta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>>|<cell|\<subseteq\>>|<cell|<around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|normed space set operations>]>>>|<cell|<around*|(|n\<cdot\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|n\<cdot\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>>>>>
        </eqnarray*>

        so that\ 

        <\equation>
          <label|eq 14.247.165><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>
        </equation>

        Let <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>>
        then there exists <math|x<rsub|1>,x<rsub|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>>
        such that <math|x=x<rsub|1>-x<rsub|2>>, so
        <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<less\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>
        or <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>,
        proving

        <\equation>
          <label|eq 14.248.165>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>
        </equation>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>-L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>z>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|linear mapping sum of
          sets>]>>>|<cell|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<text|[eq:
          <reference|eq 14.248.165>]>>>|<cell|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)><eq-number><label|eq
          14.249.165>>>>>
        </eqnarray*>

        If <math|y\<in\><big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>
        then there exist a <math|x<rsub|1>\<in\><frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>>
        and a <math|x<rsub|2>\<in\><frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>
        such that <math|y=x<rsub|1>-x<rsub|2>> or in other word
        <math|y\<in\><frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>.
        So <math|<big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>\<subseteq\><frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>,
        which combined with [eq: <reference|eq 14.249.165>] proves\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>|<cell|\<subseteq\>>|<cell|<frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<text|[eq:
          <reference|eq 14.247.165>]>>>|<cell|<wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>-<wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<text|[eq:
          <reference|eq 14.249.165>]>>>|<cell|<wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<wide-bar\>><eq-number><label|eq
          14.250.165>>>>>
        </eqnarray*>

        Let <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|x,\<beta\>|)>>
        then by [theorem: <reference|normed space set operations>]
        <math|x-<frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|x,\<beta\>|)>>
        is open, hence <math|<big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>
        is open. As <math|0=z-z\<in\><big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>
        there exist by [theorem: <reference|normed space and open sets>] a
        <math|\<lambda\>\<in\>\<bbb-R\><rsup|+>> such that

        <\equation*>
          0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>
        </equation*>

        which combined with [eq: <reference|eq 14.250.165>]\ 

        <\equation*>
          B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<wide-bar\>>
        </equation*>

        which proves [eq: <reference|eq 14.241.164>]
      </proof>

      Next we refine [eq: <reference|eq 14.241.164>] to show that\ 

      <\equation>
        <label|eq 14.251.165>If \<sigma\><rsub|0>\<in\>\<bbb-R\><rsup|+><text|
        then there exist a >\<lambda\>\<in\>\<bbb-R\><rsup|+><text| such that
        >B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,2\<cdot\>\<sigma\><rsub|o>|)>|)>
      </equation>

      <\proof>
        Using the Archimedean property of <math|\<bbb-R\>> [see theorem:
        <reference|complex Archimedean property consequence (1)>] there exist
        a <math|N\<in\>\<bbb-N\>> such that
        <math|<frac|1|N>\<less\>\<sigma\><rsub|0>>. Define
        <math|<around*|{|\<sigma\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> by
        <math|\<sigma\><rsub|n>=<around*|(|<frac|1|N+1>|)><rsup|n>> then by
        [theorem: <reference|series power series in R>] we have that\ 

        <\equation*>
          <big|sum><rsub|n=1><rsup|\<infty\>>\<sigma\><rsub|n>=<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|<frac|1|N+1>|)>=<frac|<frac|1|N+1>|1-<frac|1|N+1>>=<frac|<frac|1|N+1>|<frac|N+1-1|N+1>>=<frac|1|N>
        </equation*>

        proving that\ 

        <\equation>
          <label|eq 14.252.165><big|sum><rsub|n=1><rsup|\<infty\>>\<sigma\><rsub|n>=<frac|1|N>\<less\>\<sigma\><rsub|0>
        </equation>

        Now for all <math|n\<in\>\<bbb-N\><rsub|0>> we have by [eq:
        <reference|eq 14.241.164>] that there exist a
        <math|\<lambda\><rprime|'><rsub|n>\<in\>\<bbb-R\><rsup|+>> such that

        <\equation*>
          B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rprime|'><rsub|n>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)>|)>|\<wide-bar\>>
        </equation*>

        Define now <math|<around*|{|\<lambda\><rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
        by <math|\<lambda\><rsub|n>=min<around*|(|\<lambda\><rprime|'><rsub|n>,<frac|1|n+1>|)>>
        then we have\ 

        <\equation>
          <label|eq 14.253.165>\<forall\>n\<in\>\<bbb-N\><rsub|n><text|
          >B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|n>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)>|)>|\<wide-bar\>><text|
          and >\<lambda\><rsub|n>\<leqslant\><frac|1|n+1>
        </equation>

        Further using [example: <reference|limit 1/(a+i)>] and [theorem:
        <reference|limit sequence limited by a convergent real sequence>] it
        follows that\ 

        <\equation>
          <label|eq 14.254.165><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0
        </equation>

        Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<sigma\><rsub|0>|)>><space|1em>We
        use now recursion to define a

        <\equation*>
          <around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X<text|
          such that> \<forall\>n\<in\>\<bbb-N\><rsub|0><text|
          >x<rsub|n>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)><text|
          and ><around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|n+1>
        </equation*>

        As <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<sigma\><rsub|0>|)>>\ 

        \;

        \;
      </proof>

      \ 
    </description>

    \;
  </proof>

  Just as with series of non negative real numbers, commutativity allows us
  to extend the definition of infinite sums for absolute convergent series in
  a Banach space.

  <\definition>
    <label|series absolute sum over a countable set><index|sum over a
    countable set><dueto|Absolute convergent series of a countable family>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    Banach space, <math|I> a countable set,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> a countable
    family in <math|X> then we say that <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>
    is absolute convergent if either:

    <\enumerate>
      <item><math|I> is finite

      <item><math|I<text| is denumerable and there exist a bijection
      <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>>>
      is absolute convergent [in other words
      <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
      converges]
    </enumerate>
  </definition>

  Just as in [corollary: <reference|series absolute convergence implies
  convergence>] absolute convergent series of countable families are
  convergent in a Banach space.

  TODO

  Another way of expressing the concept of absolute convergence of countable
  families is expressed in the following theorem.

  <\theorem>
    <label|series absolute convergence countable family>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a Banach space, <math|I> a countable set,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> a countable
    family in <math|X> then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent
      >\<Leftrightarrow\><text| ><big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><text|
      is convergent>
    </equation*>
  </theorem>

  <\proof>
    As <math|I> is countable we must consider two possibilities:\ 

    <\description>
      <item*|<math|I> is finite>Then we have:

      <\description>
        <item*|<math|\<Rightarrow\>>>Using [definition: <reference|series non
        negative numbers countable sums>] it follows that
        <math|<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        is convergent.

        <item*|<math|\<Leftarrow\>>>Using [definition: <reference|series
        absolute sum over a countable set>] it follows that
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent.
      </description>

      <item*|<math|I> is denumerable>Then we have:\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>
        is absolute convergent there exist a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent. Hence <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent or using [definition: <reference|series non negative
        numbers countable sums>]

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><text|
          is convergent>
        </equation*>

        <item*|<math|\<Leftarrow\>>>If <math|<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        is convergent we have by [definition: <reference|series non negative
        numbers countable sums>] that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent. Hence by [definition: <reference|series absolute sum
        over a countable set>]\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
        </equation*>
      </description>
    </description>

    \;
  </proof>

  Using the above definition we can extend [theorem: <reference|sum bijection
  on index>] from finite sums to countable absolute convergent sums.

  <\theorem>
    <label|series absolute convergence commutativity countable sums>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I> a countable set,
    <math|\<beta\>:I\<rightarrow\>J> a bijection [hence <math|J> is also
    countable [see theorem: <reference|equipotence finite, denumerable ,
    countable>]] and <math|<big|sum><rsub|i\<in\>J>x<rsub|i>> a absolute
    convergent series in <math|X> then <math|<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>
    is absolute convergent and <math|<big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>.
  </theorem>

  <\proof>
    As <math|I> is countable we must consider two cases:\ 

    <\description>
      <item*|<math|I> is finite>Then <math|<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>
      converges by definition. and, as <math|J> is finite by [theorem:
      <reference|equipotence finite, denumerable , countable>], we can use
      [theorem: <reference|sum bijection on index>] to get
      <math|<big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>.

      <item*|<math|I> is denumerable>As <math|I> is denumerable there exist a
      bijection <math|\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>I> allowing us
      to construct the bijection <math|\<beta\>\<circ\>\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>J>.
      As <math|<big|sum><rsub|i\<in\>J>x<rsub|i>> is absolute convergent it
      follows from the definition that

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|i|)>><text|
        is absolute convergent and ><big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|i|)>>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>>
      </equation*>

      For <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>> defined by
      <math|y<rsub|i>=x<rsub|\<beta\><around*|(|i|)>>> we have
      <math|y<rsub|\<alpha\><around*|(|i|)>>=x<rsub|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>>>
      so that by the above <math|<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|<around*|(|\<alpha\><around*|(|i|)>|)>>>
      is absolute convergent and <math|<big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<alpha\><around*|(|i|)>>>.
      As <math|\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>I> is a bijection it
      follows that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>y<rsub|i><text|
        is absolute convergent and ><big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>y<rsub|i>=<big|sum><rsub|i\<in\>J>x<rsub|i>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|series absolute convergence sum and scalar product>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space and <math|I> a countable set then we have:

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>\<bbb-K\>> and
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> a absolute convergent series
      then <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>
      is a absolute convergent series and
      <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>>.

      <item>If <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> and
      <math|<big|sum><rsub|i\<in\>I>y<rsub|i>> are convergent series then
      <math|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>> is a
      absolute convergent series and <math|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    As <math|I> is countable we have either:\ 

    <\description>
      <item*|<math|I> is finite>Then (1) follows from [theorem:
      <reference|vector space finite sum (1)>] and (2) follows from [theorem:
      <reference|sum of sums (2)>].

      <item*|<math|I> is denumerable>Then we have:

      <\enumerate>
        <item>As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute
        convergent there exist by definition a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent, hence <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent. Using [theorem: <reference|series absolute convergence
        sum and scalar product>] it follows that\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>=<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>|)><text|
          is a convergent series>
        </equation*>

        proving that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>>
        is absolute convergent. Hence by [definition: <reference|series
        absolute sum over a countable set>]\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)><text|
          is absolute convergent>
        </equation*>

        Further using [theorem: <reference|series absolute convergence equals
        convergence only in Banach space>]
        <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>
        converges and we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|series absolute convergence sum and scalar
          product>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>>>>>
        </eqnarray*>

        or

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
        </equation*>

        <item>As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> and
        <math|<big|sum><rsub|i\<in\>I>y<rsub|i>> are absolute convergent
        there exist bijections <math|\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>I>
        and <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> so that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<alpha\><around*|(|i|)>>>
        and <math|<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<beta\><around*|(|i|)>>>
        are absolute convergent, or \ As <math|\<alpha\><rsup|-1>\<circ\>\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>>
        is a bijection it follows from [theorem: <reference|series absolute
        convergence commutativity>] that <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<alpha\><around*|(|<around*|(|\<alpha\><rsup|-1>\<circ\>\<beta\>|)><around*|(|i|)>|)>>>
        is absolute convergent. As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
        we have <math|x<rsub|\<alpha\><around*|(|<around*|(|\<alpha\><rsup|-1>\<circ\>\<beta\>|)><around*|(|i|)>|)>>=x<rsub|\<alpha\><around*|(|\<alpha\><rsup|-1><around*|(|\<beta\><around*|(|i|)>|)>|)>>=x<rsub|\<beta\><around*|(|i|)>>>
        proves that\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>><text|
          and ><big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<beta\><around*|(|i|)>><text|
          are absolute convergent>
        </equation*>

        Hence by definition\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>><text|
          and ><big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>><text|
          are convergent>
        </equation*>

        Using [theorem: <reference|series absolute convergence sum and scalar
        product>] it follows that

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>|)><text|
          converges>
        </equation*>

        As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
        <math|<around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        we have by the above and the dominant convergence [theorem:
        <reference|series dominant convergence>] that
        \ <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent proving that\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)><text|
          is absolute convergent>
        </equation*>

        Further using [theorem: <reference|series absolute convergence equals
        convergence only in Banach space>] we have then that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)>>
        is convergent and we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|series absolute convergence sum and scalar
          product>]>>>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>+<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>
        </equation*>
      </enumerate>
    </description>
  </proof>

  <\lemma>
    <label|lemma 14.360.158>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|I,J> sets, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>X>
    and a bijection <math|\<beta\>:I\<rightarrow\>J> then\ 

    <\equation*>
      <around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>=<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>J\<wedge\>H<text|
      is finite>|}>
    </equation*>

    \ 
  </lemma>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|s\<in\><around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|\<exists\>H\<subseteq\>I<text|
      >H<text| finite such that >s=<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|\<exists\>H\<subseteq\>I<text|
      >H<text| finite such that >s\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>><big|sum><rsub|i\<in\>\<beta\><around*|(|H|)>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>|<cell|\<Leftrightarrowlim\><rsub|\<beta\><text|
      is bijection>>>|<cell|>>|<row|<cell|\<exists\>H\<subseteq\>J<text|
      >H<text| finite such that ><big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|s\<in\><around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>J\<wedge\>H<text|
      is finite>|}>>|<cell|>|<cell|>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|series absolute convergence alternative definition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I> a countable set then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent in
      >X<text| >\<Leftrightarrow\><text| >sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>|)><text| exist>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|I> is countable we have two cases
      to consider:\ 

      <\description>
        <item*|<math|I> is finite>Then <math|\<forall\>x\<in\><around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H
        is fiinite|}>> we have that <math|\<exists\>H> finite with
        <math|H\<subseteq\>I> so that <math|x=<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<in\>><math|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H
        is fiinite|}>> so that <math|sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H
        is finite|}>|)>=<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        exists

        <item*|<math|I> is denumerable>Then there exist a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. As
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent we
        have by definition that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent, hence by [theorem: <reference|series non negative
        numbers equivalences>]

        <\equation*>
          sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>\<bbb-N\><rsub|0>\<wedge\>H<text|
          is finite>|}>|)><text| exist>
        </equation*>

        As <math|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>\<bbb-N\>\<wedge\>H<text|
        is finite>|}>\<equallim\><rsub|<text|[lemma: <reference|lemma
        14.360.158>]>><around*|{|<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
        is finite>|}>> so that\ 

        <\equation*>
          sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
          is finite>|}>|)><text| exist>
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>As <math|I> is countable we have two cases
      to consider:\ 

      <\description>
        <item*|<math|I> is finite>Then by definition
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent.

        <item*|<math|I> is denumerable>As <math|I> is denumerable there exist
        a bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. By the
        hypothesis <math|sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
        is finite>|}>|)>> exist so that by [lemma: <reference|lemma
        14.360.158>]\ 

        <\equation*>
          sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>\<bbb-N\><rsub|0>\<wedge\>H<text|
          is finite>|}>|)><text| exist >
        </equation*>

        which by [theorem: <reference|series non negative numbers
        equivalences>] proves that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        converges, hence using [definition: <reference|series absolute sum
        over a countable set>] <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is
        absolute convergent.
      </description>
    </description>
  </proof>

  We can now extend [theorem: <reference|series absolute convergence
  equivalences>] to the case of absolute convergent series with a countable
  index.

  <\theorem>
    <label|series absolute convergence of countable families condition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I> a countable set then we have

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exist a
      finite >H\<subseteq\>I<text| such that >\<forall\>K\<subseteq\>I<text|
      with <math|K> finite and >K<big|cap>H=\<varnothing\><text| we have
      ><big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|I> is countable we must consider two cases:

      <\description>
        <item*|<math|I> is finite>Take <math|H=I> then if
        <math|K\<subseteq\>I> with <math|K<big|cap>H=\<varnothing\>> then
        <math|K=K<big|cap>I=K<big|cap>H=\<varnothing\>> so that
        <math|<big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>\<varnothing\>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<equallim\><rsub|<text|[definition:
        <reference|sum generalized sum>]>>0\<less\>\<varepsilon\>>

        <item*|<math|I> is denumerable>As
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent there
        exist a bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>
        such that <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent. Using [theorem: <reference|series absolute
        convergence equivalences>] there exist a finite
        <math|H<rprime|'>\<subseteq\>\<bbb-N\><rsub|0>> such that
        <math|\<forall\>K\<subseteq\>\<bbb-N\><rsub|0>> with
        <math|K<big|cap>H<rprime|'>=\<varnothing\>> we have
        <math|<big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take <math|H=\<beta\><around*|(|H<rprime|'>|)>> then <math|H> is
        finite and if <math|L\<subseteq\>I> with <math|L> finite and
        <math|L<big|cap>H=\<varnothing\>>. Them we have
        <math|\<varnothing\>=\<beta\><rsup|-1><around*|(|L<big|cap>H|)>\<equallim\><rsub|<text|[theorem:
        <reference|function function and intersection and
        union>]>>\<beta\><rsup|-1><around*|(|L|)><big|cap>\<beta\><rsup|-1><around*|(|H|)>=\<beta\><rsup|-1><around*|(|L|)><big|cap>H<rprime|'>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        As <math|\<beta\><rsub|\|\<beta\><rsup|-1>>\<of\>\<beta\><rsup|-1><around*|(|L|)>\<rightarrow\>\<beta\><around*|(|\<beta\><rsup|-1><around*|(|L|)>|)>=L>
        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that <math|<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>=<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>As <math|I> is countable we must consider
      two cases:

      <\description>
        <item*|<math|I> is finite>By definition we have that
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent.

        <item*|<math|I> is denumerable>Then there exist a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the hypothesis
        there exist a finite <math|H<rprime|'>\<subseteq\>I> such that
        <math|\<forall\>K\<subseteq\>H> with <math|K> finite and
        <math|K<big|cap>H=\<varnothing\>> we have
        <math|<big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take <math|H=\<beta\><rsup|-1><around*|(|H<rprime|'>|)>\<subseteq\>\<bbb-N\><rsub|0>>
        and let <math|L\<subseteq\>\<bbb-N\><rsub|0>> with <math|K> finite
        and <math|L<big|cap>H=\<varnothing\>>. Then we have that

        <\equation*>
          \<varnothing\>=\<beta\><around*|(|L<big|cap>H|)>\<equallim\><rsub|\<beta\><text|
          is a bijection and [theorem: <reference|function function and
          intersection and union>]>>\<beta\><around*|(|L|)><big|cap>\<beta\><around*|(|H|)>=\<beta\><around*|(|K|)><big|cap>H<rprime|'>
        </equation*>

        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>\<beta\><around*|(|L|)>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        As <math|\<beta\><rsub|\|L>:L\<rightarrow\>\<beta\><around*|(|L|)>>
        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that <math|<big|sum><rsub|i\<in\>\<beta\><around*|(|L|)>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        Using \ [theorem: <reference|series absolute convergence
        equivalences>] it follows then that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent. Hence by [definition: <reference|series
        absolute sum over a countable set>] it follows that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
        </equation*>
      </description>
    </description>
  </proof>

  We have now the following extension of the dominant convergent series.

  <\theorem>
    <label|series absolute convergence dominant convergence><dueto|Dominant
    Convergence>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|I> a countable set,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> such that
    there exist a <math|<around*|{|s<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|[|0,\<ldots\>,\<infty\>|[>>
    such that <math|<big|sum><rsub|i\<in\>I>s<rsub|i>> is convergent and
    <math|\<forall\>i\<in\>I> we have <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\>s<rsub|i>>
    then <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent and
    <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\>I>s<rsub|i>>
  </theorem>

  <\proof>
    As <math|I> is countable we must consider two possibilities for <math|I>\ 

    <\description>
      <item*|<math|I> is finite>Then by definition
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent and\ 

      <\equation*>
        <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|[theorem:
        <reference|normed triangle inequality>]>><big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|[theorem:
        <reference|sum of real numbers and
        inequality>]>><big|sum><rsub|i\<in\>I>s<rsub|i>
      </equation*>

      \ 

      <item*|<math|I> is denumerable>Then as
      <math|<big|sum><rsub|i\<in\>I>s<rsub|i>> is absolute convergent there
      exist a bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such
      that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|s<rsub|i>|\<\|\|\>>>
      is absolute convergent, hence <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|s<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
      is convergent. As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|<around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\>s<rsub|\<beta\><around*|(|i|)>>>
      it follows from [theorem: <reference|series absolute dominant
      convergence>] that

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>><text|
        converges>
      </equation*>

      and

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=0><rsup|\<infty\>>s<rsub|\<beta\><around*|(|i|)>>.
      </equation*>

      So by [definition: <reference|series absolute sum over a countable
      set>]

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
      </equation*>

      Further by [theorem: <reference|series absolute convergence equals
      convergence only in Banach space>] <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>
      converges and\ 

      <\equation*>
        <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>\<equallim\><rsub|<text|[definition:
        <reference|sum of a countable set>]>><around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=0><rsup|\<infty\>>s<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[definition:
        <reference|sum of a countable set>]>><big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>
    </description>
  </proof>

  We can also extend [lemma: <reference|lemma 14.356.158>] to the following
  lemma:

  <\lemma>
    <label|lemma 14.364.159>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|I> a countable,
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> a absolute convergent series
    then <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    finite <math|K\<subseteq\>I> such that:

    <\enumerate>
      <item><math|\<forall\>L\<subseteq\>I> with <math|L> finite and
      <math|K<big|cap>L=\<varnothing\>> we have
      <math|<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>

      <item><math|\<forall\>H\<subseteq\>I> with <math|H> finite and
      <math|K\<subseteq\>H> we have <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>
    </enumerate>
  </lemma>

  <\proof>
    As <math|I> is countable we have two cases to consider:

    <\description>
      <item*|<math|I> is finite>Take <math|K=I> then we have:

      <\enumerate>
        <item>If <math|L\<subseteq\>I> with <math|K<big|cap>L=\<varnothing\>>
        then we have <math|L=I<big|cap>L\<equallim\><rsub|K=I>K<big|cap>L=\<varnothing\>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>\<varnothing\>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<equallim\><rsub|<text|[definition:
          <reference|sum generalized sum>]>>0\<less\>\<varepsilon\>
        </equation*>

        <item>If <math|H\<subseteq\>I> with <math|K\<subseteq\>H> then as
        <math|K=I> we have <math|H=I=K> so that\ 

        <\equation*>
          <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<less\>\<varepsilon\>
        </equation*>
      </enumerate>

      <item*|<math|I> is denumerable>Then by definition there exist a
      bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that

      <\equation>
        <label|eq 14.211.159><big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>><text|
        is absolute convergent>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then using [lemma:
      <reference|lemma 14.356.158>] there exists a
      <math|K<rprime|'>\<subseteq\>\<bbb-N\><rsub|0>> such that\ 

      <\equation>
        <label|eq 14.212.159>\<forall\>L\<subseteq\>\<bbb-N\><rsub|0><text|
        with >L<text| finite >K<rprime|'><big|cap>L=\<varnothing\><text| we
        have ><around*|\<\|\|\>|<big|sum><rsub|i\<in\>L>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      <\equation>
        <label|eq 14.213.159>\<forall\>H\<subseteq\>\<bbb-N\><rsub|0><text|
        with >H<text| finite and >K<rprime|'>\<subseteq\>H<text| then
        ><around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>H>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      Define <math|K=\<beta\><around*|(|K<rprime|'>|)>> then
      <math|K\<subseteq\>I> and by [theorem: <reference|image of a finite
      set>] <math|K> is finite. Then we have:\ 

      <\enumerate>
        <item>If <math|L\<subseteq\>I> with <math|L> finite and
        <math|K<big|cap>L=\<varnothing\>> then we have
        <math|\<beta\><rsup|-1><around*|(|L|)>\<subseteq\>\<beta\><rsup|-1><around*|(|I|)>=\<bbb-N\><rsub|0>>
        and <math|\<beta\><rsup|-1><around*|(|K|)><big|cap>\<beta\><rsup|-1><around*|(|L|)>\<equallim\><rsub|<text|[theorem:
        <reference|function function and intersection and
        union>]>>\<beta\><rsup|-1><around*|(|K<big|cap>L|)>=\<beta\><rsup|-1><around*|(|\<varnothing\>|)>=\<varnothing\>>.
        So using [eq: <reference|eq 14.212.159>] we have that
        <math|<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>>.
        As <math|\<beta\><rsub|\|\<beta\><rsup|-1><around*|(|L|)>>:\<beta\><rsup|-1><around*|(|L|)>\<rightarrow\>\<beta\><around*|(|\<beta\><rsup|-1><around*|(|L|)>|)>=L>
        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that <math|<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        proving

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        <item>If <math|H\<subseteq\>I> with <math|H> finite and
        <math|K\<subseteq\>H> then as <math|\<beta\><rsup|-1>:I\<rightarrow\>\<bbb-N\><rsub|0>>
        is a bijection we have that <math|\<beta\><rsup|-1><around*|(|H|)>=<around*|(|\<beta\><rsup|-1>|)><around*|(|H|)>>
        is finite and <math|K<rprime|'>=\<beta\><rsup|-1><around*|(|\<beta\><around*|(|K<rprime|'>|)>|)>=\<beta\><rsup|-1><around*|(|K|)>\<subseteq\>\<beta\><rsup|-1><around*|(|H|)>>.
        So using [eq: <reference|eq 14.213.159>] we have

        <\equation>
          <label|eq 14.214.159><around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|H|)>>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>.
        </equation>

        As

        <\equation*>
          \<beta\><rsub|\|\<beta\><rsup|-1><around*|(|H|)>>:\<beta\><rsup|-1><around*|(|H|)>\<rightarrow\>\<beta\><around*|(|\<beta\><rsup|-1><around*|(|H|)>|)>=H<text|
          is a bijection>
        </equation*>

        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that

        <\equation>
          <label|eq 14.215.159><big|sum><rsub|i\<in\>H>x<rsub|i>=<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|H|)>>x<rsub|\<beta\><around*|(|i|)>>
        </equation>

        proving

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 14.215.159>]>>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|H|)>>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 14.214.159>]>>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        or summarized

        <\equation*>
          <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>
      </enumerate>
    </description>
  </proof>

  Next we prove associativity of absolute convergence.

  <\theorem>
    <label|series absolute convergent countable associativity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I,K> countable sets,
    <math|<around*|{|K<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|K|)>>
    a <with|font-series|bold|pairwise disjoint >family of subsets of <math|K>
    such that <math|<big|cup><rsub|i\<in\>I>K<rsub|i>=K> and
    <math|<big|sum><rsub|i\<in\>K>x<rsub|i>> a absolute convergent series
    then we have:\ 

    <\enumerate>
      <item><math|\<forall\>i\<in\>I> <math|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>>
      is absolute convergent.

      <item><math|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>>
      is absolute convergent.

      <item><math|<big|sum><rsub|i\<in\>K>x<rsub|i>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ As <math|<big|sum><rsub|i\<in\>K>x<rsub|i>> is absolute convergent it
    follows from [theorem: <reference|series absolute convergence countable
    family>] that\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><text| is
      a convergent series of non negative numbers>
    </equation*>

    Using then the associativity of series of non negative numbers [see
    theorem: <reference|series non negative numbers associativity>] it
    follows that\ 

    <\equation>
      <label|eq 14.216.159>\<forall\>i\<in\>I<text|
      ><big|sum><rsub|j\<in\>K<rsub|i>><around*|\<\|\|\>|x<rsub|j>|\<\|\|\>><text|
      converges and ><big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>><around*|\<\|\|\>|x<rsub|j>|\<\|\|\>>|)>
    </equation>

    Using [theorem: <reference|series absolute convergence dominant
    convergence>] on the above we have that

    <\equation>
      <label|eq 14.217.159>\<forall\>i\<in\>I<text| that
      ><big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j><text| is absolute converges
      and ><around*|\<\|\|\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|\<\|\|\>>\<leqslant\><big|sum><rsub|j\<in\>K<rsub|i>><around*|\<\|\|\>|x<rsub|j>|\<\|\|\>>
    </equation>

    Using dominant convergence [see theorem: <reference|series absolute
    convergence dominant convergence>] on [eqs: <reference|eq 14.216.159>,
    <reference|eq 14.217.159>] proves that\ 

    <\equation>
      <label|eq 14.218.159><big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)><text|
      is absolute convergent>
    </equation>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. \ As
    <math|<big|sum><rsub|i\<in\>K>x<rsub|i>> is absolute convergent we have
    by [lemma: <reference|lemma 14.364.159>] there exist a finite
    <math|G\<subseteq\>K> such that\ 

    <\equation>
      <label|eq 14.219.161>\<forall\>H\<subseteq\>K<text| with >H<text|
      finite and >G\<subseteq\>H<text| we have
      ><around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation>

    Define <math|J=<around*|{|i\<in\>I\|K<rsub|i><big|cap>G\<neq\>\<varnothing\>|}>\<subseteq\>I>.
    If <math|x\<in\>G\<subseteq\>K=<big|cup><rsub|i\<in\>I>K<rsub|i>> then
    there exist a <math|i\<in\>I> such that
    <math|x\<in\>G<big|cap>K<rsub|i>\<Rightarrow\>G<big|cap>K<rsub|i>\<neq\>\<varnothing\>\<Rightarrow\>i\<in\>J>
    so that <math|x\<in\><big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>>
    proving that <math|G\<subseteq\><big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>\<subseteq\>G>
    so that

    <\equation>
      <label|eq 14.219.160>G=<big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>
    </equation>

    Assume that <math|J> is not finite then as
    <math|<around*|{|K<rsub|j><big|cap>G|}><rsub|j\<in\>J>> is a family of
    pairwise disjoint non empty sets if follows from [theorem:
    <reference|infinite family of pairwise disjoint non empty sets is
    infinite>] that <math|G=<big|cup><rsub|i\<in\>J><around*|(|K<big|cap>N<rsub|i>|)>>
    is infinite, contradicting the fact that <math|G> was finite. Hence\ 

    <\equation>
      <label|eq 14.220.159>J<text| is finite>
    </equation>

    As by [eq: <reference|eq 14.218.159>]
    <math|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)><text|>>
    is absolute convergent we can use [lemma: <reference|lemma 14.364.159>]
    again to find a finite <math|L\<subseteq\>I> such that
    <math|\<forall\>H\<subseteq\>I> with <math|H> finite and
    <math|L\<subseteq\>H> we have

    <\equation*>
      <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>H><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation*>

    Take <math|M=J<big|cup>L> then using [eq: <reference|eq 14.220.159>]
    <math|M> is finite, <math|M\<subseteq\>I> and <math|L\<subseteq\>H> so
    that\ 

    <\equation>
      <label|eq 14.221.519><around*|\<\|\|\>|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation>

    By [eq: <reference|eq 14.217.159>] <math|\<forall\>i\<in\>M\<subseteq\>I>
    <math|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>> is absolute convergent
    we have by [lemma: <reference|lemma 14.364.159>] that there exist a
    finite <math|M<rsub|i>\<subseteq\>K<rsub|i>> such that

    <\equation>
      <label|eq 14.223.159.1>\<forall\>H\<subseteq\>K<rsub|i><text| with
      >H<text| finite and >M<rsub|i>\<subseteq\>H<text| we have
      ><around*|\<\|\|\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>-<big|sum><rsub|j\<in\>H>x<rsub|j>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3\<cdot\>card<around*|(|M|)>>
    </equation>

    Now <math|\<forall\>i\<in\>M> define <math|N<rsub|i>=M<rsub|i><big|cup><around*|(|K<rsub|i><big|cap>G|)>>
    a finite set then we have <math|N<rsub|i>\<subseteq\>K<rsub|i>> and
    <math|M<rsub|i>\<subseteq\>N<rsub|i>> so that by the above [eq:
    <reference|eq 14.222.159>] we have\ 

    <\equation>
      <label|eq 14.222.159>\<forall\>i\<in\>M<text| we have
      ><around*|\<\|\|\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>-<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3\<cdot\>card<around*|(|M|)>>
    </equation>

    Now we have\ 

    <\equation*>
      G\<equallim\><rsub|<text|[eq: <reference|eq
      14.219.160>]>><big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>\<subseteq\><big|cup><rsub|j\<in\>J><around*|(|M<rsub|j><big|cup><around*|(|K<rsub|j><big|cap>G|)>|)>=<big|cup><rsub|j\<in\>M>N<rsub|j>\<subseteq\><rsub|N<rsub|j>\<subseteq\>K<rsub|j>><big|cup><rsub|j\<in\>M>K<rsub|j>\<subseteq\>K
    </equation*>

    So that by [eq: <reference|eq 14.219.161>] we have\ 

    <\equation>
      <label|eq 14.225.161><around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation>

    Further\ 

    <\equation>
      <label|eq 14.226.161>\<forall\>i,j\<in\>M<text| with >i\<neq\>j<text|
      we have >N<rsub|i><big|cap>N<rsub|j>\<subseteq\>K<rsub|i><big|cap>K<rsub|j>=\<varnothing\>\<Rightarrow\>N<rsub|i><big|cap>N<rsub|j>=\<varnothing\>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>+<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>Nj>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>|\<\|\|\>>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 14.225.161>>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.226.161>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>+<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 14.221.519>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>+<frac|\<varepsilon\>|3>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|\<nobracket\>>-<around*|\<nobracket\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>+<frac|\<varepsilon\>|3>>|<cell|\<leqslant\><rsub|M<text|
      is finite>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<big|sum><rsub|i\<in\>M><around*|\<\|\|\>|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>-<big|sum><rsub|j\<in\>K<rsub|i>>|\<\|\|\>>+<frac|\<varepsilon\>|3>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 14.223.159.1>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<big|sum><rsub|i\<in\>M><frac|\<varepsilon\>|3\<cdot\>card<around*|(|M|)>>+<frac|\<varepsilon\>|3>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
    </eqnarray*>

    So given <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have that
    <math|0\<leqslant\><around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    so that by [theorem: <reference|complex Archimedean property consequence
    (2)>] <math|><math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>
    proving\ 

    <\equation>
      <label|eq 14.227\<point\>161><big|sum><rsub|i\<in\>K>x<rsub|i>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>
    </equation>

    Finally (1) is proved by [eq: <reference|eq 14.217.159>] , (2) by \ [eq:
    <reference|eq 14.218.159>] and (3) by [eq: <reference|eq
    14.227\<point\>161>].
  </proof>

  As a application of the above theorem we prove distributivity for absolute
  convergent series in <math|\<bbb-R\>>.

  <\theorem>
    <label|series distributivity>Let <math|I,J> be countable sets,
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> the Banach
    space of the real numbers [see theorem: <reference|complete set of real
    numbers>] and <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>,
    <math|<big|sum><rsub|i\<in\>J>y<rsub|j>> absolute convergent series in
    <math|\<bbb-R\>> then <math|<big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>,y<rsub|j>|)>>
    is absolute convergent and

    <\equation*>
      <big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>,y<rsub|j>|)>=<around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\>J>y<rsub|j>|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>,
    <math|<big|sum><rsub|i\<in\>J>y<rsub|j>> are absolute convergent we have
    by [theorem: <reference|series absolute convergence alternative
    definition>] that

    <\equation*>
      s=sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\||x<rsub|i>|\|>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>|)><text| and >t=sup<around*|(|<around*|{|<big|sum><rsub|\<iota\>H><around*|\||y<rsub|i>|\|>\|H\<subseteq\>J\<wedge\>H<text|
      is finite>|}>|)><text| exists>
    </equation*>

    Let <math|H> be a finite subset of <math|I\<times\>J>. As
    <math|\<pi\><rsub|1>:H\<rightarrow\>\<pi\><rsub|1><around*|(|H|)>> and
    <math|\<pi\><rsub|2>:H\<rightarrow\>\<pi\><rsub|2><around*|(|H|)>> are
    surjective we have that <math|\<pi\><rsub|1><around*|(|H|)>,\<pi\><rsub|2><around*|(|H|)>>
    are finite [see theorem: <reference|surjection f:A-\<gtr\>B if A is
    finite then B is finite>]. Further if
    <math|<around*|(|i,j|)>\<in\>H\<subseteq\>I\<times\>J> then
    <math|i=\<pi\><rsub|1><around*|(|<around*|(|i,j|)>|)>\<in\>\<pi\><rsub|1><around*|(|H|)>>
    and <math|j=\<pi\><rsub|2><around*|(|<around*|(|i,j|)>|)>\<in\>\<pi\><rsub|2><around*|(|H|)>>
    proving that <math|<around*|(|i,j|)>\<in\>\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>>
    or\ 

    <\equation*>
      H\<subseteq\>\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>
    </equation*>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>H><around*|\||x<rsub|i>\<cdot\>y<rsub|j>|\|>>|<cell|=>|<cell|<big|sum><rsub|\<alpha\>\<in\>H><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|(|\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>|)>\\H><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>+<big|sum><rsub|<around*|(|i,j|)>\<in\>H><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[corollary:
      <reference|sum distributivity>]>>>|<cell|<around*|(|<big|sum><rsub|i\<in\>\<pi\><rsub|1><around*|(|H|)>><around*|\||x<rsub|i>|\|>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\>\<pi\><rsub|2><around*|(|H|)>><around*|\||y<rsub|i>|\|>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|s\<cdot\>t>>>>
    </eqnarray*>

    From the above it follows that <math|<around*|{|<big|sum><rsub|i\<in\>H><around*|\||x<rsub|i>\<cdot\>y<rsub|i>|\|>\|H\<subseteq\>I\<wedge\>H<text|
    is finite>|}>> has the upper bound <math|s\<cdot\>t> so that by the
    conditional completeness of <math|\<bbb-R\>> [see theorem:
    <reference|complex RC is conditional complete>]
    <math|sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\||x<rsub|i>\<cdot\>y<rsub|i>|\|>\|H\<subseteq\>I\<wedge\>H<text|
    is finite>|}>|)>> exist. Hence using [theorem: <reference|series absolute
    convergence alternative definition>]\ 

    <\equation>
      <label|eq 14.228.161><big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>\<cdot\>x<rsub|j>|)><text|
      is absolute convergent>
    </equation>

    Next we prove that\ 

    <\equation>
      <label|eq 14.229.161>I\<times\>J=<big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)><text|
      and >\<forall\>i,j\<in\>I<text| with >i\<neq\>j<text| we have
      ><around*|(|<around*|{|i|}>\<times\>J|)><big|cap><around*|(|<around*|{|j|}><big|cap>J|)>=\<varnothing\>
    </equation>

    <\proof>
      As <math|\<forall\>i\<in\>I> we have
      <math|<around*|{|i|}>\<times\>J\<subseteq\>I\<times\>J> it follows that
      <math|<big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>\<subseteq\>I\<times\>J>,
      further if <math|<around*|(|r,s|)>\<in\>I\<times\>J> we have
      <math|r\<in\>I\<wedge\>s\<in\>J> so that
      <math|<around*|(|r,s|)>\<in\><around*|{|r|}>\<times\>J\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>>
      or <math|I\<times\>J\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>>.
      Hence\ 

      <\equation*>
        I\<times\>J=<big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>
      </equation*>

      Further if <math|i,j\<in\>I> with <math|i\<neq\>j> then if
      <math|<around*|(|r,s|)>\<in\><around*|(|<around*|{|i|}>\<times\>J|)><big|cap><around*|(|<around*|{|j|}><big|cap>J|)>>
      then <math|r=i\<wedge\>r=j\<Rightarrow\>i=j> contradicting
      <math|i\<neq\>j> so we have\ 

      <\equation*>
        <around*|(|<around*|{|i|}>\<times\>J|)><big|cap><around*|(|<around*|{|j|}><big|cap>J|)>=\<varnothing\><text|
        >\<forall\>i,j\<in\>I<text| with >i\<neq\>j
      </equation*>
    </proof>

    Let \ <math|i\<in\>I> and take <math|<around*|(|r,s|)>,<around*|(|r<rprime|'>,s<rprime|'>|)>\<in\><around*|{|i|}>\<times\>J>
    such that <math|\<pi\><rsub|2><around*|(|<around*|(|r,s|)>|)>=\<pi\><rsub|2><around*|(|<around*|(|r<rprime|'>,s<rprime|'>|)>|)>>
    then <math|r=i=r<rprime|'>> and <math|s=s<rprime|'>> so that
    <math|<around*|(|r,s|)>=<around*|(|r<rprime|'>,s<rprime|'>|)>>. Further
    if <math|j\<in\>J> then <math|<around*|(|i,j|)>\<in\><around*|{|i|}>\<times\>J>
    and <math|\<pi\><rsub|2><around*|(|<around*|(|i,j|)>|)>=j>. So we have
    that

    <\equation>
      <label|eq 14.230.161>\<forall\>i\<in\>I<text| we have that
      >\<pi\><rsub|2>:<around*|{|i|}>\<times\>J\<rightarrow\>J<text| is a
      bijection>
    </equation>

    Using the previous theorem [theorem: <reference|series absolute
    convergent countable associativity>] on [eqs: <reference|eq 14.228.161>,
    <reference|eq 14.229.161>]

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>\<cdot\>y<rsub|j>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|<around*|(|r,s|)>\<in\><around*|{|i|}>\<times\>J><around*|(|x<rsub|r>\<cdot\>y<rsub|s>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|r,s|)>\<in\><around*|{|i|}>\<times\>J\<Rightarrow\>x<rsub|r>=x<rsub|i>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|<around*|(|r,s|)>\<in\><around*|{|i|}>\<times\>J><around*|(|x<rsub|i>\<cdot\>y<rsub|\<pi\><rsub|2><around*|(|r,s|)>><rsub|>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|series absolute convergence sum and scalar
      product>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>\<cdot\><big|sum><rsub|<around*|(|r,s|)>>y<rsub|\<pi\><rsub|2><around*|(|r,s|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|series absolute convergence commutativity countable
      sums>]>\<wedge\><text|[eq: <reference|eq
      14.230.161>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i\<cdot\>><big|sum><rsub|j\<in\>J><rsub|>y<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|series absolute convergence sum and scalar
      product>]>>>|<cell|<around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i>|)>\<cdot\><around*|(|<big|sum><rsub|j\<in\>J>y<rsub|j>|)>>>>>
    </eqnarray*>
  </proof>

  \;

  <\definition>
    <label|diff (i-\<gtr\>x)><index|<math|<around*|(|i\<rightarrow\>x|)>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of sets, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>n|}>>X<rsub|j>>
    then we define\ 

    <\equation*>
      <around*|(|i\<rightarrow\>x|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j><text|
      by >t\<rightarrow\><around*|(|i\<rightarrow\>x|)><around*|(|t|)><text|
      where ><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t<text|
      if >j=i>>>>>
    </equation*>

    In other words <math|<around*|(|i\<rightarrow\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i,>x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>
  </definition>

  <\lemma>
    <label|lemma 16.24.178>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of sets, <math|U\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>n|}>\\<around*|{|i|}>>X<rsub|j>>
    then

    <\equation*>
      <around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>
    </equation*>
  </lemma>

  <\proof>
    Let <math|t\<in\><around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>
    then <math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>\<in\>U> hence
    <math|\<pi\><rsub|i><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)>\<in\>\<pi\><rsub|i><around*|(|U|)>>.As

    <\equation*>
      \<pi\><rsub|i><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)>=<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|i>\<equallim\><rsub|det>t
    </equation*>

    it follows that <math|t\<in\>\<pi\><rsub|i><around*|(|U|)>>. Hence we
    have\ 

    <\equation*>
      <around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.25.178>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector spaces over the field <math|\<bbb-K\>>,
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    and <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have

    <\enumerate>
      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=x>

      <item><math|\<forall\>s,t\<in\>X<rsub|i><text| we have
      ><around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t-s|)>>

      <item><math|\<forall\>t\<in\>X<rsub|i><text| we have
      ><around*|(|i\<rightarrow\>x|)><around*|(|t|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t|)>+<around*|(|i\<rightarrow\>x|)><around*|(|0|)>>

      <item><math|\<forall\>s\<in\>X<rsub|i>> we have
      <math|x+<around*|(|i\<rightarrow\>0|)><around*|(|s|)>=<around*|(|i\<rightarrow\>x|)><around*|(|s+x<rsub|i>|)>>
    </enumerate>

    where <math|0\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>>
    is defined by <math|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><math|Let j\<in\><around*|{|1,\<ldots\>,n|}>> then we have

      <\equation*>
        <around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
        if >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|x<rsub|i><text|
        if >i=j>>>>>=x<rsub|j>
      </equation*>

      proving that\ 

      <\equation*>
        <around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=x
      </equation*>

      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|k>-<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
        if >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t<text|
        if >k=i>>>>>-<choice|<tformat|<table|<row|<cell|x<rsub|k><text| if
        >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|s<text|
        if >k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0<text|
        if >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t-s<text|
        if >k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|i\<rightarrow\>0|)><around*|(|t-s|)>>>>>
      </eqnarray*>

      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>>

      <item>
    </enumerate>

    \;
  </proof>

  <\definition>
    <label|diff delta function><index|<math|\<Delta\><rsub|i,j>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|x\<in\>X<rsub|i>> then we define\ 

    <\equation*>
      \<Delta\><rsub|i,j>:X<rsub|i>\<rightarrow\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|k><text|
      by >\<Delta\><rsub|i,j><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|x<text|
      if >i=j>>|<row|<cell|0<rsub|j><text| if >i\<neq\>j>>>>><text| where
      >0<rsub|j><text| is the neutral element in <math|X<rsub|j>>>
    </equation*>

    In other words <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we
    have <math|\<Delta\><rsub|i,i><around*|(|x|)>=x\<in\>X<rsub|i>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|k>>
    and <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
    we have <math|\<Delta\><rsub|i,j><around*|(|x|)>=0<rsub|j>\<in\>X<rsub|j>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|k>>.
  </definition>

  We have now the following lemmas\ 

  \;

  <\theorem>
    <label|continuity L(X,L(Y,Z)) is isometric with L(X,Y;Z)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then we can construct a linear
    isometric isomorphism\ 

    <\equation*>
      \<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)>
    </equation*>

    between <math|L<around*|(|X,Y;Z|)>> and
    <math|L<around*|(|X,L<around*|(|Y,Z|)>|)>>. Hence by [theorem:
    <reference|normed isometry and inverse>], if we take
    <math|\<psi\>=\<varphi\><rsup|-1>> then\ 

    <\equation*>
      \<psi\>:L<around*|(|X,L<around*|(|Y,Z|)>|)>\<rightarrow\>L<around*|(|X,Y;Z|)><text|
      is a linear isometric isomorphism>
    </equation*>

    In other words <math|L<around*|(|X,L<around*|(|Y,Z|)>|)>> and
    <math|L<around*|(|X,Y;Z|)>> are isometric [see definition:
    <reference|normed linear isometry>] or

    <\equation*>
      L<around*|(|X,L<around*|(|Y,Z|)>|)>\<approx\>L<around*|(|X,Y;Z|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|L\<in\>L<around*|(|X,Y;Z|)>> and given <math|x\<in\>X> define\ 

    <\equation>
      <label|eq 14.75.149>L<rsub|x>:Y\<rightarrow\>Z<text| by
      >L<rsub|x><around*|(|y|)>=L<around*|(|x,y|)>
    </equation>

    If <math|r,s\<in\>Y> and <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

    <\equation*>
      L<rsub|x><around*|(|r+\<alpha\>\<cdot\>s|)>=L<around*|(|x,r+\<alpha\>\<cdot\>s|)>\<equallim\><rsub|<text|multilinearity>>L<around*|(|x,r|)>+\<alpha\>\<cdot\>L<around*|(|x,s|)>=L<rsub|x><around*|(|r|)>+\<alpha\>\<cdot\>L<rsub|x><around*|(|s|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 14.76.149>L<rsub|x>\<in\>Hom<around*|(|Y,Z|)>
    </equation>

    Further for <math|r\<in\>Y> we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<rsub|x><around*|(|r|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|L<around*|(|x,r|)>|\<\|\|\>><rsub|Z>\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|Y>
    </equation*>

    proving by [theorem: <reference|continuity linear mapping (1)>] and
    [definition: <reference|continuity operator norm>] that

    <\equation>
      <label|eq 14.77.149>\<forall\>x\<in\>X<text|
      >L<rsub|x>\<in\>L<around*|(|Y,Z|)><text| and
      ><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation>

    The above allows us, given <math|L\<in\>L<around*|(|X,Y;Z|)>>, define\ 

    <\equation>
      <label|eq 14.78.149>\<varphi\><rsub|L>:X\<rightarrow\>L<around*|(|Y,Z|)><text|
      by >\<varphi\><rsub|L><around*|(|x|)>=L<rsub|x>
    </equation>

    Then if <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> we have for
    <math|r\<in\>Y> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>|)><around*|(|r|)>>|<cell|=>|<cell|L<rsub|x+\<alpha\>\<cdot\>y><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y,r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|multilinearity>>>|<cell|L<around*|(|x,r|)>+\<alpha\>\<cdot\>L<around*|(|y,r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<rsub|x><around*|(|r|)>+\<alpha\>\<cdot\>L<rsub|y><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|\<varphi\><rsub|L><around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L><around*|(|y|)>|)><around*|(|r|)>>>>>
    </eqnarray*>

    proving that <math|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>=\<varphi\><rsub|L><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L><around*|(|y|)>>.
    Hence

    <\equation>
      <label|eq 14.79.149>\<varphi\><rsub|L>\<in\>Hom<around*|(|X,L<around*|(|Y,Z|)>|)>
    </equation>

    For <math|x\<in\>X> we have\ 

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><rsub|L><around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.77.149>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation*>

    proving by [theorem: <reference|continuity linear mapping (1)>] and
    [definition: <reference|continuity operator norm>] that

    <\equation>
      <label|eq 14.80.149>\<varphi\><rsub|L>\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      and ><around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    The above let us define\ 

    <\equation>
      <label|eq 14.81.150>\<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      by >\<varphi\><around*|(|L|)>=\<varphi\><rsub|L>
    </equation>

    Let <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y;Z|)>> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then for <math|x\<in\>X> we have
    <math|\<forall\>r\<in\>Y> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x><around*|(|r|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x,r|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x,r|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x,r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>|)><rsub|x><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>|)><around*|(|r|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>>.
    Hence\ 

    <\equation*>
      \<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>><around*|(|x|)>=<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>=\<varphi\><rsub|L<rsub|1>><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>><around*|(|x|)>=<around*|(|\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>|)><around*|(|x|)>
    </equation*>

    proving that <math|\<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>>=\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>>.
    So\ 

    <\equation*>
      \<varphi\><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>=\<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>>=\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>=\<varphi\><around*|(|L<rsub|1>|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|L<rsub|2>|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 14.82.149>\<varphi\>\<in\>Hom<around*|(|L<around*|(|X,Y;Z|)>,L<around*|(|X,L<around*|(|Y,Z|)>|)>|)><text|>
    </equation>

    Further giving <math|L\<in\>L<around*|(|X,Y;Z|)>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>=<around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.80.149>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation*>

    giving by \ [theorem: <reference|continuity linear mapping (1)>]

    <\equation>
      <label|eq 14.83.150>\<varphi\>\<in\>L<around*|(|<around*|(|L<around*|(|X,Y;Z|)>,L<around*|(|X,L<around*|(|Y,Z|)>|)>|)>|)><text|
      and ><around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    Next we will define the inverse mapping of <math|\<varphi\>>. Let
    <math|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>> and define\ 

    <\equation>
      <label|eq 14.84.149>\<psi\><rsub|L>:X\<cdot\>Y\<rightarrow\>Z<text| by
      >\<psi\><rsub|L><around*|(|x,y|)>=<around*|(|L<around*|(|x|)>|)><around*|(|y|)>
    </equation>

    Let <math|x,y\<in\>X>, <math|r\<in\>Y> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y,r|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x+\<alpha\>\<cdot\>y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>>>|<cell|<around*|(|L<around*|(|x|)>+\<alpha\>\<cdot\>L<around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|\<psi\><rsub|L><around*|(|x,r|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|y,r|)>>>>>
    </eqnarray*>

    and for <math|x\<in\>X>, <math|r,s\<in\>Y> and
    <math|\<alpha\>\<in\>\<bbb-K\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x,r+\<alpha\>\<cdot\>s|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r+\<alpha\>\<cdot\>s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L<around*|(|x|)>\<in\>L<around*|(|Y,Z|)>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|x|)>|)><around*|(|s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|\<psi\><rsub|L><around*|(|x,r|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|x,s|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<psi\><rsub|L>\<in\>Hom<around*|(|X,Y;Z|)>
    </equation*>

    If <math|<around*|(|x,y|)>\<in\>X\<cdot\>Y> then\ 

    <\equation*>
      <around*|\<\|\|\>|\<psi\><rsub|L><around*|(|x,y|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|<around*|(|L<around*|(|x|)>|)><around*|(|y|)>|\<\|\|\>><rsub|Z>\<leqslant\><rsub|L<around*|(|x|)>\<in\>L<around*|(|Y,Z|)>><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y><rsub|>
    </equation*>

    proving by [theorems: <reference|continuity multilinear mapping (1)>,
    <reference|continuity operator norm of multilinear mappings (1)>] that\ 

    <\equation>
      <label|eq 14.85.150>\<psi\><rsub|L>\<in\>L<around*|(|X,Y;Z|)><text| and
      ><around*|\<\|\|\>|\<psi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    The above allows use to define\ 

    <\equation>
      <label|eq 14.86.150>\<psi\>:L<around*|(|X,L<around*|(|Y,Z|)>|)>\<rightarrow\>L<around*|(|X,Y;Z|)><text|
      by >\<psi\><around*|(|L|)>=\<psi\><rsub|L>
    </equation>

    where by [eq: <reference|eq 14.85.150>]\ 

    <\equation>
      <label|eq 14.87.150>\<forall\>L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      ><around*|\<\|\|\>|\<psi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>=<around*|\<\|\|\>|\<psi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    Let <math|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>> and
    <math|x\<in\>X>, <math|y\<in\>Y> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<varphi\><around*|(|\<psi\><around*|(|L|)>|)>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.81.150>]>>>|<cell|<around*|(|<around*|(|\<varphi\><rsub|\<psi\><around*|(|L|)>>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>>>|<cell|<around*|(|\<psi\><around*|(|L|)>|)><rsub|x><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|\<psi\><around*|(|L|)><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.86.150>]>>>|<cell|\<psi\><rsub|L><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|y|)>>>>>
    </eqnarray*>

    so that <math|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>=L<around*|(|x|)>>
    from which it follows that <math|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>=L>.
    Hence we have that\ 

    <\equation>
      <label|eq 14.88.150>\<varphi\>\<circ\>\<psi\>=Id<rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    On the other hand if <math|L\<in\>L<around*|(|X,Y;Z|)>> and
    <math|<around*|(|x,y|)>\<in\>X\<cdot\>Y> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|)><around*|(|x,y|)>>|<cell|=>|<cell|<around*|(|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|)><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.86.150>]>>>|<cell|\<psi\><rsub|\<varphi\><around*|(|L|)>><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|<around*|(|\<varphi\><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.81.150>]>>>|<cell|<around*|(|<around*|(|\<varphi\><rsub|L>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>>>|<cell|L<rsub|x><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<around*|(|x,y|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>=L>,
    hence\ 

    <\equation>
      <label|eq 14.89.150>\<psi\>\<circ\>\<varphi\>=Id<rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    From [eqs: <reference|eq 14.88.150>, <reference|eq 14.89.150>] it follows
    by [theorem: <reference|function bijection condition (2)>] that
    <math|\<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    is a bijection. Combining this with ]eq: <reference|eq 14.82.149>] proves
    that\ 

    <\equation>
      <label|eq 14.90.150>\<varphi\><text| is a linear isomorphism>
    </equation>

    Finally we have for <math|L\<in\>L<around*|(|X,Y;Z|)>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>|<cell|\<equallim\>>|<cell|<around*|\<\|\|\>|Id<rsub|L<around*|(|X,Y;Z|)>><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.89.150>]>>>|<cell|<around*|\<\|\|\>|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.87.150>]>>>|<cell|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>>>>>
    </eqnarray*>

    which combined with [eq: <reference|eq 14.83.150>] proves that
    <math|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>.
    This together with [eq: <reference|eq 14.90.150>] proves that\ 

    <\equation*>
      \<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      is a linear isometric isomorphism>
    </equation*>
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the
    normed space of real (complex) numbers with the canonical norm,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, a open set <math|U\<subseteq\>\<bbb-K\>>, <math|x\<in\>U>
    and

    <\equation*>
      f:U\<rightarrow\>L<rsup|n><around*|(|\<bbb-K\>;X|)><text| a function>
    </equation*>

    then\ 

    <\equation*>
      f<text| is Frèchet differentiable at <math|x>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|<around*|[|n|]>><text| is differentiable at >X<text| with
      differential ><around*|(|D<rsup|>f<around*|(|x|)>|)><rsub|<around*|[|n|]>>
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|h,k\<in\>\<bbb-K\>> and
      <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h+\<alpha\>\<cdot\>k|)>>|<cell|=>|<cell|D
        f<around*|(|x|)><around*|(|h+\<alpha\>\<cdot\>k|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|D
        f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>>>|<cell|<around*|(|D
        f<around*|(|x|)><around*|(|h|)>+\<alpha\>\<cdot\>D
        f<around*|(|x|)><around*|(|k|)>|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>+\<alpha\>\<cdot\>D
        f<around*|(|x|)><around*|(|k|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h|)>+\<alpha\>\<cdot\><around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|k|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 16.45.185><around*|(|D f<around*|(|x|)>|)><rsub|<around*|[|h|]>>\<in\>Hom<around*|(|\<bbb-K\>,X|)>
      </equation>

      Further if <math|h\<in\>\<bbb-K\>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|D
        f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>\<Rightarrow\>D
        f<around*|(|x|)><around*|(|h|)>\<in\>L<rsup|n><around*|(|\<bbb-K\>;X|)>>>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>;X|)>>\<cdot\><big|prod><rsub|i=1><rsup|n>1>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>;X|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|D
        f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>><rsub|>>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>>\<cdot\><around*|\||h|\|>>>>>
      </eqnarray*>

      proving by [theorem: <reference|continuity linear mapping (1)>] and
      [eq: <reference|eq 16.45.185>] that <math|<around*|(|D
      f<around*|(|x|)>|)><rsub|<around*|[|n|]>>> is continuous or\ 

      <\equation>
        <label|eq 16.46.185><around*|(|D f<around*|(|x|)>|)><rsub|<around*|[|n|]>>\<in\>L<around*|(|\<bbb-K\>,Y|)>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is
      Frèchet differentiable at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\||h|\|>\<less\>\<delta\>> we have\ 

      <\equation>
        <label|eq 16.47.185><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>;X|)>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<rsub|<around*|[|h|]>><around*|(|x+h|)>-f<rsub|<around*|[|h|]>><around*|(|x|)>-<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h|)>|\<\|\|\>><rsub|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-f<around*|(|x|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-D
        f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>;X|)>>\<cdot\><big|prod><rsub|i=1><rsup|1>1>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>;X|)>>>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.47.185>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
      </eqnarray*>

      This proves that\ 

      <\equation*>
        f<rsub|<around*|[|h|]>><text| is Frèchet differentiable at <math|x>
        with <math|D<around*|(| f<around*|[|n|]>|)><around*|(|x|)>=<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>>>>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|f<rsub|<around*|[|n|]>>> is
      Frèchet differential at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        \<forall\>h\<in\>U<rsub|x><text| with
        ><around*|\||h|\|>\<less\>\<delta\><text| we have
        ><around*|\<\|\|\>|f<rsub|<around*|[|n|]>><around*|(|x+h|)>-f<rsub|<around*|[|n|]>><around*|(|x|)>-D<around*|(|f<rsub|<around*|[|n|]>>|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation>

      \;
    </description>

    \;
  </proof>

  <subsubsection|Product of <math|n>-times differentiable functions>

  <\lemma>
    <label|lemma 16.104.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then

    <\equation*>
      ev:L<around*|(|X,Y|)>\<cdot\>X\<rightarrow\>Y<text| defined by
      >ev<around*|(|L,x|)>=L<around*|(|x|)>
    </equation*>

    is of class <math|C<rsup|\<infty\>>>. Further
    <math|\<forall\>L\<in\>L<around*|(|X,Y|)>> and <math|x\<in\>X> we have\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>ev<around*|(|L,x|)>=D
      ev<around*|(|L,x|)>=ev<around*|(|L,\<ast\>|)>+ev<around*|(|\<ast\>,x|)>
    </equation*>

    [see theorem: <reference|diff bilinear mappings are infinite times
    differentiable>].
  </lemma>

  <\proof>
    Using [theorem: <reference|diff bilinear mappings are infinite times
    differentiable>] it is enough to prove that <math|ev> is a bilinear
    continuous function or in other words
    <math|ev\<in\>L<around*|(|L<around*|(|X,Y|)>,X;Y|)>>. Let
    <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>>, <math|x\<in\>X> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ev<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>,x|)>>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|L<rsub|1>,x|)>+\<alpha\>\<cdot\>ev<around*|(|L<rsub|2>,x|)>>>>>
    </eqnarray*>

    and for <math|L\<in\>L<around*|(|X,Y|)>>, <math|x,y\<in\>X> and
    <math|\<alpha\>\<in\>\<bbb-K\>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ev<around*|(|L,x+\<alpha\>\<cdot\>y|)>>|<cell|=>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x|)>+\<alpha\>\<cdot\>L<around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|L,x|)>+\<alpha\>\<cdot\>ev<around*|(|L,y|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      ev\<in\>Hom<around*|(|L<around*|(|X,Y|)>,X;Y|)>
    </equation*>

    Let <math|<around*|(|L,x|)>\<in\>L<around*|(|X,Y|)>\<cdot\>X> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|ev<around*|(|L,x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity linear mapping (1)>] that\ 

    <\equation*>
      ev\<in\>L<around*|(|L<around*|(|X,Y|)>,X;Y|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.105.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| is a >n<text|-times differentiable at >x
    </equation*>

    then for <math|h\<in\>X> we have that there exist a open set <math|V>
    with <math|x\<in\>V\<subseteq\>U>

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      defined by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)><around*|(|h|)>
    </equation*>

    is <math|<around*|(|n-1|)>>-times differentiable at <math|x>. Further
    <math|\<forall\>k,h,x\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>|)><around*|(|k|)>>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|k|)>|)><around*|(|h|)>>>>>
    </eqnarray*>
  </lemma>

  <\proof>
    As <math|f> is <math|n>-times differentiable at <math|x> and
    <math|1\<less\>n> we have by [theorem: <reference|diff D^f=D^(n-1)D^1f>]
    that there exist a open set <math|V> such that
    <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> we have
    that <math|f> is <math|1>-times differentiable at <math|y> and the
    function\ 

    <\equation>
      D<rsup|1>f:V\<rightarrow\>L<around*|(|X,Y|)><text| defined by
      ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>
    </equation>

    is <math|<around*|(|n-1|)>>-times differentiable. Given <math|v\<in\>X>
    define\ 

    <\equation>
      \<varphi\><rsub|v>:U\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text| by
      >\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>
    </equation>

    Then we have for <math|y\<in\>X>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.122.194>\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>=D<rsup|<around*|[|1|]>>f<text|
      and >\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>=C<rsub|v>
    </equation>

    So that <math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>> is
    <math|<around*|(|n-1|)>>-times differentiable at <math|x> and
    <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>> is <math|\<infty\>>-times
    differentiable at <math|x> [see theorem: <reference|diff constant
    function is infinitely times differentiable>] it follows by [theorem:
    <reference|diff higher order differentiation and vector functions>] that\ 

    <\equation>
      <label|eq 16.123.194>\<varphi\><rsub|v><text| is
      ><around*|(|n-1|)><text|-times differentiable at >x
    </equation>

    As <math|1\<less\>n> it follows that <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>>
    so that by [theorem: <reference|diff n-times and m-times
    differentiability>] <math|\<varphi\><rsub|v>> is <math|1>-times
    differentiable at <math|x>, hence using \ [theorem: <reference|diff
    differential of a vector valued function>] it follows that

    <\equation*>
      \<pi\><rsub|1>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|1>\<circ\>D
      \<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.122.194>]>>D<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|2|]>>f<around*|(|x|)>
    </equation*>

    and\ 

    <\equation*>
      \<pi\><rsub|2>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|2>\<circ\>D\<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.122.194>]>>D<around*|(|C<rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff constant function is infinitely times
      differentiable>]>>C<rsub|1,0><rsub|>
    </equation*>

    So that\ 

    <\equation>
      <label|eq 16.124.194>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>>
    </equation>

    Given <math|h\<in\>X> we can, as <math|\<forall\>y\<in\>V> <math|f> is
    <math|1>-times differentiable at <math|y>, define

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)><around*|(|h|)>
    </equation*>

    Let <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.125.194>D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>=ev\<circ\>\<varphi\><rsub|h>
    </equation>

    As <math|ev> is of <math|\<infty\>>-times differentiable by [lemma:
    <reference|lemma 16.104.194>] and <math|\<varphi\><rsub|v>> is by [eq:
    <reference|eq 16.123.194>] <math|<around*|(|n-1|)>>-times differentiable
    at <math|x> it follows that\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)><text| is
      ><around*|(|n-1|)><text|-times differentiable at >x
    </equation*>

    Given that <math|1\<less\>n> it follows that
    <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>> so that by [theorem:
    <reference|diff n-times and m-times differentiability>]
    <math|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>> is <math|1>-times
    differentiable at <math|x> then for <math|k\<in\>Z> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>|)><around*|(|k|)>>|<cell|=>|<cell|<around*|(|D<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.125.194>]>>>|<cell|<around*|(|D<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|<around*|(|D
      ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>\<circ\>D
      \<varphi\><rsub|h><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.104.194>]>>>|<cell|<around*|(|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.124.194>]>>>|<cell|<around*|(|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\><around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)><around*|(|k|)>,C<rsub|1,0><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)><around*|(|k|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,0|)>+ev<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)><around*|(|k|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|0|)>+<around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|k|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|k|)>|)><around*|(|h|)>>>>>
    </eqnarray*>
  </proof>

  We have a variant of the previous lemma for differential classes.

  <\lemma>
    <label|lemma 16.106.194>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open and
    <math|f:U\<rightarrow\>Y> is a function of <math|C<rsup|n>> and
    <math|h\<in\>X> then\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      defined by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)><around*|(|h|)>
    </equation*>

    is of class <math|C<rsup|n-1>>.
  </lemma>

  <\proof>
    As <math|f> is of class <math|C<rsup|n>> we have by [theorem:
    <reference|diff f is of class C^n if D^1f u=is of class C^n-1>] that
    <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times differentiable at
    <math|x> and\ 

    <\equation>
      <label|eq 16.126.194>D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
      defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|
      is of class >C<rsup|<around*|[|n-1|]>>
    </equation>

    Given <math|v\<in\>X> define

    <\equation*>
      \<varphi\><rsub|v>:U\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text| by
      >\<varphi\><rsub|v><around*|(|x,D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v|)>
    </equation*>

    then we have for <math|x\<in\>U>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.127.194>\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>=D<rsup|<around*|[|1|]>>f<text|
      and >\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>=C<rsub|v>
    </equation>

    So that <math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>> is
    <math|<around*|(|n-1|)>>-times differentiable at <math|x> and
    <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>> is <math|\<infty\>>-times
    differentiable at <math|x> [see theorem: <reference|diff constant
    function is infinitely times differentiable>] it follows by [theorem:
    <reference|diff higher order differentiation and vector functions>] that\ 

    <\equation>
      <label|eq 16.128.194>\<varphi\><rsub|v><text| is of class >C<rsup|n-1>
    </equation>

    As <math|1\<less\>n> it follows that <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>>
    and thus by [theorem: <reference|diff C^n and C^m>] that
    <math|\<varphi\><rsub|v>> is of class <math|C<rsup|1>>. \ Hence
    <math|\<varphi\><rsub|v>> is <math|1>-times differentiable at <math|x>,
    so that by [theorem: <reference|diff differential of a vector valued
    function>] it follows that

    <\equation*>
      \<pi\><rsub|1>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|1>\<circ\>D
      \<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.127.194>]>>D<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|2|]>>f<around*|(|x|)>
    </equation*>

    and\ 

    <\equation*>
      \<pi\><rsub|2>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|2>\<circ\>D\<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.127.194>]>>D<around*|(|C<rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff constant function is infinitely times
      differentiable>]>>C<rsub|1,0><rsub|>
    </equation*>

    So that\ 

    <\equation>
      <label|eq 16.129.194>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>>
    </equation>

    Given <math|h\<in\>X> we can, as <math|\<forall\>y\<in\>U> <math|f> is
    <math|1>-times differentiable at <math|y>, define

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)><around*|(|h|)>
    </equation*>

    Let <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.130.194>D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>=ev\<circ\>\<varphi\><rsub|h>
    </equation>

    As <math|ev> is of class <math|C<rsup|\<infty\>>> by [lemma:
    <reference|lemma 16.104.194>] and <math|\<varphi\><rsub|h>> is by [eq:
    <reference|eq 16.128.194>] of class <math|C<rsup|n-1>> it follows that\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)><text| is
      of class >C<rsup|n-1>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.107.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| is a >n<text|-times differentiable at >x
    </equation*>

    then there exist a open set <math|V> in <math|X> with
    <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
    <math|D<rsup|<around*|[|1|]>>f<around*|(|y|)>> exist and

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| defined by
      >\<Delta\>f<around*|(|x,h|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>
    </equation*>

    is of <math|<around*|(|n-1|)>>-times differentiable at <math|x>.
  </lemma>

  <\proof>
    As <math|1\<less\>n> we have by [theorem: <reference|diff
    D^f=D^(n-1)D^1f>] that there exist a open set <math|V> with
    <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> <math|f>
    is <math|1>-times differentiable at <math|y> and\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<around*|(|X,Y|)><text| where
      ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)><text|
      is ><around*|(|n-1|)><text| times differentiable at >x
    </equation*>

    This allows us to define the functions\ 

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| by
      >\<Delta\>f<around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)><around*|(|h|)>
    </equation*>

    <\equation*>
      \<varphi\>:U\<times\>X\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text|
      by >\<varphi\><around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>
    </equation*>

    Given <math|x\<in\>V>, <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|h>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=D<rsup|<around*|[|1|]>>f<text| and
      >\<pi\><rsub|2>\<circ\>\<varphi\>=\<pi\><rsub|2>
    </equation*>

    As <math|D<rsup|<around*|[|1|]>>f> is <math|<around*|(|n-1|)>>-times
    differentiable at <math|x>, and <math|\<pi\><rsub|2>> is
    <math|\<infty\>>-times differentiable at <math|x> [see theorem:
    <reference|diff projection functon is infinite times differentiable>] it
    follows from [theorem: <reference|diff higher order differentiation and
    vector functions>] that\ 

    <\equation*>
      \<varphi\><text| is ><around*|(|n-1|)><text|-times differentiable at >x
    </equation*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|ev\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|ev<around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|1>f<around*|(|x|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|\<Delta\>f<around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<Delta\>f=ev\<circ\>\<varphi\>
    </equation*>

    As <math|\<varphi\>> is <math|<around*|(|n-1|)>>-times differentiable at
    <math|x> and <math|ev> is <math|\<infty\>>-times differentiable at
    <math|x> [see lemma: <reference|lemma 16.104.194>] it follows from the
    generalized chain rule [theorem: <reference|diff chain rule higher
    order>] that <math|\<Delta\>f> is <math|<around*|(|n-1|)>>-times
    differentiable at <math|x>.
  </proof>

  \;

  <\lemma>
    <label|lemma 16.108.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| a function of class >C<rsup|n>
    </equation*>

    [so that <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times
    differentiable at <math|x> by [theorem: <reference|diff f is of class C^n
    if D^1f u=is of class C^n-1>] then

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| defined by
      >\<Delta\>f<around*|(|x,h|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>
    </equation*>

    is of class <math|C<rsup|n>>.
  </lemma>

  <\proof>
    As <math|1\<less\>n> we have by [theorem: <reference|diff f is of class
    C^n if D^1f u=is of class C^n-1>] that <math|\<forall\>x\<in\>U> <math|f>
    is <math|1>-times differentiable at <math|y> and\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<around*|(|X,Y|)><text| where
      ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|
      is of class >C<rsup|n-1>
    </equation*>

    This allows us to define the functions\ 

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| by
      >\<Delta\>f<around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)><around*|(|h|)>
    </equation*>

    <\equation*>
      \<varphi\>:U\<times\>X\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text|
      by >\<varphi\><around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>
    </equation*>

    Given <math|x\<in\>V>, <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|h>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=D<rsup|<around*|[|1|]>>f<text| and
      >\<pi\><rsub|2>\<circ\>\<varphi\>=\<pi\><rsub|2>
    </equation*>

    As <math|D<rsup|<around*|[|1|]>>f> is of class <math|C<rsup|n-1>>, and
    <math|\<pi\><rsub|2>> is of class <math|C<rsup|\<infty\>>> [see theorem:
    <reference|diff projection functon is infinite times differentiable>] it
    follows from [theorem: <reference|diff higher order differentiation
    classes>] that\ 

    <\equation*>
      \<varphi\><text| is of class >C<rsup|n>
    </equation*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|ev\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|ev<around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|1>f<around*|(|x|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|\<Delta\>f<around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<Delta\>f=ev\<circ\>\<varphi\>
    </equation*>

    As <math|\<varphi\>> is of class <math|C<rsup|n-1>> and <math|ev> is of
    class <math|C<rsup|\<infty\>>> [see lemma: <reference|lemma 16.104.194>]
    it follows from the generalized chain rule [theorem: <reference|diff
    chain rule higher order class>] that <math|\<Delta\>f> is of class
    <math|C<rsup|n-1>>.
  </proof>

  <\lemma>
    <label|lemma 16.190.122>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>], <math|U> a open set in
    <math|X>, and <math|f:U\<rightarrow\>L<around*|(|X,Y|)>> a continuous
    function then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> the
    function

    <\equation*>
      f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>:X\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      defined by ><around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|x|)>=f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation*>

    [see definition: <reference|diff unprojection>] is continuous.
  </lemma>

  <\proof>
    Let <math|x\<in\>U>. First as <math|f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>>
    and <math|I<rsup|<around*|[|i,o|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>=L<around*|(|X<rsub|i>,X|)>>
    [see \ definition: <reference|diff unprojection>] so that

    <\equation>
      <label|eq 16.261.222>f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,Y|)>,
    </equation>

    proving that <math|><math|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>>
    is well defined. Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
    <math|f> is continuous there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>y\<in\>X> with
    <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|max>\<less\>\<delta\>> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>>.
    Let <math|h\<in\>X<rsub|i>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>-<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|z|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>|)><around*|(|h|)>-<around*|(|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h|)>-<around*|(|f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)><around*|(|I<rsup|<around*|[|i,o|]>><around*|(|h|)>|)>-f<around*|(|x|)><around*|(|I<rsup|<around*|[|i,o|]>><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|lemma 16.24.178>]>>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|i>>>>>
    </eqnarray*>

    Hence using [theorem: <reference|continuity norm on L(X,Y)>] we have\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>-<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<leqslant\><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>
    </equation*>

    proving that <math|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>>
    is continuous.
  </proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a <with|font-series|bold|Banach> space,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space over <math|\<bbb-R\>> based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>], <math|U> a open set in
    <math|X>, <math|f:U\<rightarrow\>Y> such that <math|\<forall\>x\<in\>U>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> has a
    <math|i>-partial derivate <math|D<rsub|x,i>f> at <math|x> and the
    function

    <\equation*>
      D<rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>;Y|)><text| defined by
      >D<rsub|i>f<around*|(|x|)>=D<rsub|x,i>f
    </equation*>

    is continuous. Then <math|f> is of class <math|C<rsup|1>> and\ 

    <\equation*>
      D<rsub|x>f=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x,i>f\<circ\>\<pi\><rsub|i>|)>
    </equation*>

    So if we define\ 

    <\equation*>
      D f:U\<rightarrow\>L<around*|(|X;Y|)>:<around*|(|D
      f|)><around*|(|x|)>=D<rsub|x>f
    </equation*>

    then\ 

    <\equation*>
      D f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Given
    <math|h=<around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>\<in\>X> and
    <math|i\<in\><around*|{|0,\<ldots\>,n|}>> define
    <math|h<rsup|<around*|\<langle\>|i|\<rangle\>>>> by\ 

    <\equation>
      <label|eq 16.280.125.1>h<rsup|<around*|\<langle\>|i|\<rangle\>>>=<choice|<tformat|<table|<row|<cell|<big|sum><rsub|j=1><rsup|i>I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|0<text| if
      >i=0>>>>>
    </equation>

    then we have\ 

    <\equation>
      <label|eq 16.281.125>h<rsup|<around*|\<langle\>|n|\<rangle\>>>\<equallim\><rsub|n\<in\>\<bbb-N\>\<Rightarrow\>n\<neq\>0><big|sum><rsub|j=1><rsup|n>I<rsup|<around*|[|j,0|]>>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>]>><rsup|>h
    </equation>

    Given <math|i\<in\><around*|{|0,\<ldots\>,n|}>> then we have either:

    <\description>
      <item*|<math|i=0>>Then\ 

      <\equation*>
        <around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>=<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|0|\<rangle\>>>|\<\|\|\>><rsub|max>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|max>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>
      </equation*>

      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then for
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> we have

      <\description>
        <item*|<math|k\<in\><around*|{|1,\<ldots\>,i|}>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j=1><rsup|i>I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|i><around*|(|I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.24.178>]>><rsup|>>|<cell|<big|sum><rsub|j=1><rsup|i>\<delta\><rsub|j,k>\<cdot\>h<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|h<rsub|k>>>>>
        </eqnarray*>

        so that <math|<around*|\<\|\|\>|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>|\<\|\|\>><rsub|k>=<around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>>

        \;

        <item*|<math|k\<in\><around*|{|i+1,\<ldots\>,n|}>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j=1><rsup|i>I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|i><around*|(|I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.24.178>]>><rsup|>>|<cell|<big|sum><rsub|j=1><rsup|i>\<delta\><rsub|j,k>\<cdot\>h<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}><text|
          >k\<neq\>j>>|<cell|0>>>>
        </eqnarray*>

        so that <math|><math|<around*|\<\|\|\>|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>|\<\|\|\>><rsub|k>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|k>\<leqslant\><around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>>
      </description>

      proving that <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|\<\|\|\>|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>|\<\|\|\>><rsub|k>\<leqslant\><around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>>.
      Hence\ 

      <\equation*>
        <around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|k>\|k\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>\|k\<in\><around*|{|1,\<ldots\>n|}>|}>|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|max>
      </equation*>
    </description>

    So we have that\ 

    <\equation>
      <label|eq 16.282.125>\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}><text|
      we have ><around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max><text|
      for every >h\<in\>X
    </equation>

    By the hypothesis we have that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

    <\equation>
      <label|eq 18.283.124>D<rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by >D<rsub|i>f<around*|(|x|)>=D<rsub|x,i>f<text| is a continuous
      function>
    </equation>

    Let <math|x\<in\>U> then as <math|U> is open there exist a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> so that\ 

    <\equation>
      <label|eq 16.284.124>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>U
    </equation>

    Define now\ 

    <\equation>
      <label|eq 16.285.124>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>\<rightarrow\>Y<text|
      by >g<around*|(|y|)>=f<around*|(|y|)>-f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>-x<rsub|i>|)>
    </equation>

    Then <math|g<around*|(|x|)>=f<around*|(|x|)>-f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<cdot\><around*|(|x<rsub|i>-x<rsub|i>|)>=0>
    which proves that\ 

    <\equation>
      <label|eq 16.286.124>g<around*|(|x|)>=0
    </equation>

    Define

    <\equation>
      <label|eq 16.284.124>L:X\<rightarrow\>Y<text| by
      >L<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<cdot\>y<rsub|i>
    </equation>

    then we can rewrite [eq: <reference|eq 16.285.124>] as\ 

    <\equation>
      <label|eq 16.288.125>g=f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>-C<rsub|f<around*|(|x|)>>-L<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>+C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>
    </equation>

    If <math|y,z\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> then we have
    that

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|y+\<alpha\>\<cdot\>z|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y+\<alpha\>\<cdot\>z|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>+\<alpha\>\<cdot\>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>+\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)><around*|(|z<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|y|)>+\<alpha\>\<cdot\>L<around*|(|z|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.289.124>L\<in\>Hom<around*|(|X,Y|)>
    </equation>

    Further for every <math|y\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<cdot\><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>|)>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|max>>>>>
    </eqnarray*>

    So using [theorem: <reference|continuity linear mapping (1)>] it follows
    that\ 

    <\equation*>
      L\<in\>L<around*|(|X,Y|)>
    </equation*>

    By [theorem: <reference|diff linear mapping is infinite times
    differentiable>] <math|L> is <math|\<infty\>>-times differentiable on
    <math|X> and <math|D<rsub|y>L=L>. So using [theorems: <reference|diff
    differentiability is a local property>, <reference|diff constant function
    is differentiable> and <reference|diff differentiability is a local
    property>] on [eq: <reference|eq 16.288.125>] proves that

    <\equation>
      <label|eq 16.290.126>\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)><text|
      g is Frèchet differentiable at >y
    </equation>

    Using [theorem: <reference|diff Frechet differentation implies partial
    differentiability >] <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

    <\equation>
      <label|eq 16.200.124>D<rsub|y,i>L<text| exist and
      >D<rsub|y,i>L=L\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation>

    Further if <math|k\<in\>X<rsub|i>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|k|)>>|<cell|=>|<cell|L<around*|(|I<rsup|<around*|[|i,0|]>><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>D<rsub|j>f<around*|(|x|)><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|k|)>|)><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>]>><rsup|>>|<cell|<big|sum><rsub|j=1><rsup|n>D<rsub|j>f<around*|(|x|)><around*|(|\<delta\><rsub|i,j>\<cdot\>k|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>\<delta\><rsub|i,j>\<cdot\>D<rsub|j>f<around*|(|x|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|i>f<around*|(|x|)><around*|(|k|)>>>>>
    </eqnarray*>

    which proves that <math|L\<circ\>I<rsup|<around*|[|i,0|]>>=D<rsub|i>f<around*|(|x|)>>,
    substituting this in [eq: <reference|eq 16.290.124>] gives that

    <\equation>
      <label|eq 16.291.124>\<forall\>y\<in\>X<text|
      >D<rsub|y,i>L=D<rsub|i>f<around*|(|x|)>
    </equation>

    Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as <math|f> is Frèchet
    differentiable at <math|y> it follows from [theorem: <reference|diff
    partial differentiation is local>] that\ 

    <\equation>
      <label|eq 16.292.125>D<rsub|y,i>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>><text|
      exists and >D<rsub|y,i>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>=D<rsub|y,i>f
    </equation>

    further by [example: <reference|diff constant function and partial
    differentiation>]\ 

    <\equation>
      <label|eq 16.293.125>D<rsub|y,i>C<rsub|f<around*|(|x|)>><text|,
      >D<rsub|y,i>C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>><text|exists
      and >D<rsub|y,i>C<rsub|f<around*|(|x|)>>=C<rsub|0><text|, ><text|,
      >D<rsub|y,i>C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>=C<rsub|0>
    </equation>

    Further by [theorem: <reference|diff partial differentiation is local>]
    we have that\ 

    <\equation>
      <label|eq 16.294.125>D<rsub|y,i>L<text| exists and
      >D<rsub|y,i>L=D<rsub|i>f<around*|(|x|)>
    </equation>

    Using [theorem: <reference|diff partial differential properties>]
    together with [eqs: <reference|eq 16.288.125>, <reference|eq 16.292.125>,
    <reference|eq 16.293.125>, <reference|eq 16.294.125>] we have that
    <math|D<rsub|y,i>g> exists and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|y,i>g>|<cell|=>|<cell|D<rsub|y,i><around*|(|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>-C<rsub|f<around*|(|x|)>>-L<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>+C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|y,i>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>-D<rsub|y,i>C<rsub|f<around*|(|x|)>>-D<rsub|y,i>L<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>+D<rsub|y,i>C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|y,i>f-C<rsub|0>-D<rsub|i>f<around*|(|x|)>+C<rsub|0>>>|<row|<cell|>|<cell|\<equallim\><rsub|C<rsub|0><text|
      is neutral element>>>|<cell|D<rsub|y,i>f-D<rsub|i>f<around*|(|x|)>>>>>
    </eqnarray*>

    so that <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>
    we have\ 

    <\equation>
      <label|eq 16.295.125>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >D<rsub|y,i>g<text| exists and \ >D<rsub|y,i>g=D<rsub|y,i>f-D<rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>
    </equation>

    this allows us to define\ 

    <\equation>
      <label|eq 16.296.125>D<rsub|i>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by ><around*|(|D<rsub|i>g|)><around*|(|y|)>=D<rsub|i,y>g=D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>
    </equation>

    As for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> <math|D<rsub|i>f> is
    continuous there exists <math|\<delta\><rsub|2,i>\<in\>\<bbb-R\><rsup|+>>
    such that if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|2,i>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>
    then

    <\equation*>
      <around*|\<\|\|\>|D<rsub|i>g<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.296.125>]>><around*|\<\|\|\>|D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<less\><frac|\<varepsilon\>|n>.
    </equation*>

    So if <math|\<delta\><rsub|2>=min<around*|(|<around*|{|\<delta\><rsub|2,i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then we have\ 

    <\equation>
      <label|eq 16.297.125>\<forall\>h\<in\>X<text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|D<rsub|i>g<around*|(|x+h|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>=<around*|\<\|\|\>|D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<less\><frac|\<varepsilon\>|n>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|x+h|)>>|<cell|\<equallim\><rsub|<text|[eqs:
      <reference|eq 16.280.125.1>, <reference|eq
      16.281.125>]>>>|<cell|g<around*|(|x+h<rsup|<around*|\<langle\>|h|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|0|\<rangle\>>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of differences (1)>]>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|g<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|)>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 16.298.125><around*|\<\|\|\>|g<around*|(|x+h|)>|\<\|\|\>><rsub|Y>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|g<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|)>|\<\|\|\>>
    </equation>

    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then by [eq: <reference|eq
    16.282.125>] we have <math|<around*|\<\|\|\>|h<rsup|<around*|[|i|]>>|\<\|\|\>><rsub|max>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>\<less\>\<delta\><rsub|2>>
    so that <math|<around*|\<\|\|\>|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>,<around*|\<\|\|\>|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>\<less\>\<delta\><rsub|2>>.
    Using then the mean value theorem [theorem: <reference|diff mean value
    theorem (4)>] and ]eq: <reference|eq 16.290.126>] we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>-x-h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\><around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>-<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>|)>|)>>g|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>-h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\><around*|(|h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>-h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>>g|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>|<cell|>|<cell|<eq-number><label|eq
      16.300.126>>>>>
    </eqnarray*>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\><around*|(|h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>-h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\>h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>+<around*|\<\|\|\>|t\<cdot\>h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<equallim\><rsub|t\<in\><around*|[|0,1|]>\<Rightarrow\>0\<leqslant\>1-t,t>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>+t\<cdot\><around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.282.125>]>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>+t\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\><rsub|2>>>>>
    </eqnarray*>

    so that by [

    \ 

    \;
  </proof>

  <\render-proof|Proof>
    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t|)>-x|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\><rsub|<wide*|t|\<wide-underbrace\>><rsub|i>>\<ldots\>x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|0,\<ldots\><wide*|t-x<rsub|i>|\<wide-underbrace\>>\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|0,\<ldots\>0,<wide*|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>|\<wide-underbrace\>><rsub|i>,0\<ldots\>.0|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>\<less\>\<delta\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>
    </equation*>

    Define then\ 

    <\equation>
      <label|eq 16.280.126>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>Y<text|
      by >g<around*|(|t|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>
    </equation>

    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then <math|y\<in\>I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>>
    so that <math|f> has a <math|i>-partial differential
    <math|D<rsub|y,i>f<rsub|>> at <math|y>. So by definition the function\ 

    <\equation*>
      f<rsup|<around*|[|i,y|]>>=f\<circ\><around*|(|I<rsup|<around*|[|i,y|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,y|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|y<rsub|i>=t>. Let
    <math|\<forall\>s\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have for <math|y=I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>x<rsub|n>|)>>

    <\equation*>
      I<rsup|<around*|[|i,y|]>><around*|(|s|)>=<around*|(|y<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,y<rsub|n>|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>=I<rsup|<around*|[|i,x|]>><around*|(|s|)>
    </equation*>

    so that <math|g<around*|(|s|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=f<around*|(|I<rsup|<around*|[|i,y|]>><around*|(|s|)>|)>>.
    Hence <math|g=<around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    proving by [theorem: <reference|diff differentiability is a local
    property>] that <math|g> is Fréchet differentiable at <math|y<rsub|i>=t>
    and <math|D<rsub|t>g=D<rsub|y<rsub|i>><around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>=D<rsub|y,i>f>.
    To summarize\ 

    <\equation*>
      \<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)><text|
      >g<text| has a >i<text|-partial differential at >t<text| with
      >D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f
    </equation*>

    So we can define the function\ 

    <\equation>
      <label|eq 12.281.126>D g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by >D<rsub|g><around*|(|t|)>=D<rsub|t>g
    </equation>

    Then <math|\<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have

    <\equation*>
      D g<around*|(|t|)>=D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f=D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=D<rsub|i>f<around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>><around*|(|t|)>|)>=<around*|(|<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>|)><around*|(|t|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 16.282.126>D g=<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>
    </equation>

    As <math|D<rsub|i>f> is continuous and
    <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    is continuous [see theorems: <reference|lemma 16.24.178>,
    <reference|continuity and subspace topology (2)>] it follows that <math|D
    g> is continuous. Combining this with the above proves that

    <\equation*>
      g<text| is of class >C<rsup|1>
    </equation*>

    Let <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then we have by the mean value theorem [corollary: <reference|diff mean
    value theorem (3.1)>] that\ 

    <\equation>
      <label|eq 16.283.126><around*|\<\|\|\>|g<around*|(|y|)>-g<around*|(|z|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|><rsub|y+t\<cdot\><around*|(|z-y|)>>g|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|><rsub|y+t\<cdot\><around*|(|z-y|)>>g>|<cell|=>|<cell|D
      g<around*|(|y+t\<cdot\><around*|(|z-y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.282.126>]>>>|<cell|D>>>>
    </eqnarray*>
  </render-proof>

  <\lemma>
    <label|lemma 16.201.126>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>],
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|U> a open set in <math|U>,
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U>,
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>\<subseteq\>U>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|f:U\<rightarrow\>Y> a
    function such that <math|\<forall\>y\<in\>U> <math|f> has a
    <math|i>-partial differential at <math|y> and the function

    <\equation*>
      D<rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text| where
      >D<rsub|i>f<around*|(|y|)>=D<rsub|y,i>f<text|>
    </equation*>

    is continuous then <math|\<forall\>y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|z|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y+t\<cdot\><around*|(|z-y|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|i>
    </equation*>
  </lemma>

  <\render-proof|Proof>
    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t|)>-x|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\><rsub|<wide*|t|\<wide-underbrace\>><rsub|i>>\<ldots\>x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|0,\<ldots\><wide*|t-x<rsub|i>|\<wide-underbrace\>>\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|0,\<ldots\>0,<wide*|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>|\<wide-underbrace\>><rsub|i>,0\<ldots\>.0|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>\<less\>\<delta\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>
    </equation*>

    Define then\ 

    <\equation>
      <label|eq 16.280.126>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>Y<text|
      by >g<around*|(|t|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>
    </equation>

    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then <math|y\<in\>I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>>
    so that <math|f> has a <math|i>-partial differential
    <math|D<rsub|y,i>f<rsub|>> at <math|y>. So by definition the function\ 

    <\equation*>
      f<rsup|<around*|[|i,y|]>>=f\<circ\><around*|(|I<rsup|<around*|[|i,y|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,y|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|y<rsub|i>=t>. Let
    <math|\<forall\>s\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have for <math|y=I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>x<rsub|n>|)>>

    <\equation*>
      I<rsup|<around*|[|i,y|]>><around*|(|s|)>=<around*|(|y<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,y<rsub|n>|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>=I<rsup|<around*|[|i,x|]>><around*|(|s|)>
    </equation*>

    so that <math|g<around*|(|s|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=f<around*|(|I<rsup|<around*|[|i,y|]>><around*|(|s|)>|)>>.
    Hence <math|g=<around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    proving by [theorem: <reference|diff differentiability is a local
    property>] that <math|g> is Fréchet differentiable at <math|y<rsub|i>=t>
    and <math|D<rsub|t>g=D<rsub|y<rsub|i>><around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>=D<rsub|y,i>f>.
    To summarize\ 

    <\equation*>
      \<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)><text|
      >g<text| has a >i<text|-partial differential at >t<text| with
      >D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f
    </equation*>

    So we can define the function\ 

    <\equation>
      <label|eq 16.281.126>D g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by >D<rsub|g><around*|(|t|)>=D<rsub|t>g
    </equation>

    Then <math|\<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have

    <\equation*>
      D g<around*|(|t|)>=D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f=D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=D<rsub|i>f<around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>><around*|(|t|)>|)>=<around*|(|<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>|)><around*|(|t|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 16.282.126>D g=<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    </equation>

    As <math|D<rsub|i>f> is continuous and
    <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    is continuous [see theorems: <reference|lemma 16.24.178>,
    <reference|continuity and subspace topology (2)>] it follows that <math|D
    g> is continuous. Combining this with the above proves that

    <\equation*>
      g<text| is of class >C<rsup|1>
    </equation*>

    Let <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then we have by the mean value theorem [corollary: <reference|diff mean
    value theorem (3.1)>] that\ 

    <\equation>
      <label|eq 16.283.126><around*|\<\|\|\>|g<around*|(|z|)>-g<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|><rsub|y+t\<cdot\><around*|(|z-y|)>>g|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|i>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|D g<around*|(|y+t\<cdot\><around*|(|z-y|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.282.126>]>>>|<cell|<around*|(|<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>|)><around*|(|y+t\<cdot\><around*|(|z-y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y+t\<cdot\><around*|(|x-y|)>|)>|)>>>>>
    </eqnarray*>

    which combined with [eqs: <reference|eq 16.280.126>, <reference|eq
    16.283.126>] gives\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|z|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y+t\<cdot\><around*|(|z-y|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|i>
    </equation*>
  </render-proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a <with|font-series|bold|Banach> space,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space over <math|\<bbb-R\>> based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>], <math|U> a open set in
    <math|X> and <math|f:U\<rightarrow\>Y> is a function. If
    <math|\<forall\><around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    we have <math|\<forall\>x\<in\>U> that the partial differential
    \ <math|D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f> of
    order <math|m> at <math|x> exist and the function\ 

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f:U\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
      defined by >D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>
    </equation*>

    is continuous. Then

    <\equation*>
      f<text| is of class >C<rsup|m>
    </equation*>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      S=<around*|{|m\<in\>\<bbb-N\>\|If \<forall\><around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><text|
      we have >\<forall\>x\<in\>U<text| that
      >D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f<text|
      exist and> the function D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f:U\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><rsub|><text|
      defined by >D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f<text|
      is continuous then >f<text| is of class >C<rsup|m>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>This follows the definition of partial
      differentials of order <math|m=1> and the previous theorem [theorem:
      <reference|diff continuous partial differentials implies
      differentiability>].

      <item*|<math|m\<in\>S>>Let <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      and fix <math|i<rsub|m+1>\<in\><around*|{|1,\<ldots\>,n|}>> then
      <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m+1|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      and by the hypothesis we have that <math|\<forall\>x\<in\>U>
      <math|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>
      exist and\ 

      <\equation*>
        D<rsup|<around*|[|m+1|]>><rsub|i<rsub|m+1>\<ldots\>i<rsub|1>>f:U\<rightarrow\>L<rsub|m+1><around*|(|X<rsub|i<rsub|m+1>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
        defined by >D<rsup|<around*|[|m+1|]>><rsub|i<rsub|m+1>\<ldots\>i<rsub|1>>f<around*|(|x|)>=D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f
      </equation*>

      is continuous. Given <math|x\<in\>U> we have, as
      <math|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>
      exist, that there exist a <math|V<rsub|x>> with
      <math|x\<in\>V<rsub|x>\<subseteq\>U> such that
      <math|\<forall\>y\<in\>V> <math|D<rsub|x,i<rsub|m>,\<ldots\>,i<rsub|1>>f>
      exist and the function\ 

      <\equation*>
        D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f:V<rsub|x>\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
        defined by >D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|y|)>=D<rsup|<around*|[|m|]>><rsub|y,i<rsub|m>\<ldots\>i<rsub|1>>f
      </equation*>

      has a <math|i<rsub|m+1>>-partial differential at <math|x>.
      <math|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>
      is then defined to be <math|D<rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f|)>>.
      As <math|x\<in\>V<rsub|x>> we have that
      <math|D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f>
      exist, so we can define

      <\equation*>
        D<rsub|i<rsub|m>\<ldots\>i<rsub|1>><rsup|<around*|[|m|]>>f:U\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
        by >D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f
      </equation*>

      If <math|x\<in\>U> then <math|\<forall\>y\<in\>V<rsub|x>> we have
      <math|D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>><rsub|><around*|(|y|)>=D<rsup|<around*|[|m|]>><rsub|y,i<rsub|m>\<ldots\>i<rsub|1>>f=D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|y|)>>
      proving that

      <\equation*>
        D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f=<around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f|)><rsub|\|V<rsub|x>>
      </equation*>

      Using the fact that partial differentiability is local [see theorem:
      <reference|diff partial differentiation is local>] we conclude that
      <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f> is
      <math|i<rsub|m+1>>-partial differentiable at <math|x> and

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|<around*|[|m+1|]>><rsub|i<rsub|m+1>\<ldots\>i<rsub|1>>f<around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>>|<row|<cell|>|<cell|=>|<cell|D<rsup|><rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f|)><rsub|\|V<rsub|x>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:
        <reference|diff partial differentiation is
        local>]>>>|<cell|D<rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f|)>>>>>
      </eqnarray*>

      Hence if we define\ 

      <\equation*>
        D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>:U\<rightarrow\>L<around*|(|X<rsub|i<rsub|m+1>>,L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;<rsub|>|)>|)>=L<rsub|m+1><around*|(|X<rsub|i<rsub|m+1>>\<ldots\>X<rsub|i<rsub|1>>;Y|)>
      </equation*>

      where

      <\equation*>
        D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)><around*|(|x|)>=D<rsub|x,i<rsub|m+1>><around*|(|<around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>|)>
      </equation*>

      then <math|D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>=D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>>.
      As <math|D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>>
      is continuous it follows that <math|D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>>
      is continuous. Applying then the previous theorem [theorem:
      <reference|diff continuous partial differentials implies
      differentiability>] it follows that
      <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f> is of
      class <math|C<rsup|1>>. Using [theorem: <reference|diff C^n and C^m>]
      it follows that <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f>
      is of class <math|C<rsup|0>> meaning that
      <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> is
      continuous. As this is true for every
      <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      and <math|m\<in\>S> we conclude that <math|f> is of class
      <math|C<rsup|m>>.\ 

      \ 
    </description>

    \;
  </proof>

  <\conjecture>
    <label|conjecture 16.245.134>Let <math|\<sigma\>\<in\>\<bbb-R\><rsup|+>>
    with <math|\<sigma\>\<leqslant\>\<rho\>> then
    <math|\<forall\>y\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>|\<wide-bar\>>>
    there exist a <with|font-series|bold|unique
    ><math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    such that <math|f<around*|(|x|)>=y>
  </conjecture>

  <\proof>
    Given <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>>
    and <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>>
    define <math|T<rsub|y>=y+T<around*|(|x|)>\<in\>X> then we have

    <\equation*>
      <around*|\<\|\|\>|T<rsub|y><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|y+T<around*|(|x|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.351.134>]>><around*|\<\|\|\>|y|\<\|\|\>>+<frac|1|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<less\><frac|\<sigma\>|2>+<frac|\<sigma\>|2>=\<sigma\>
    </equation*>

    or <math|T<rsub|y>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<sigma\>|)>>.
    Hence we can define the function\ 

    <\equation*>
      T<rsub|y>:B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>
      by T<rsub|y><around*|(|x|)>=y+T<around*|(|x|)>
    </equation*>

    so that\ 

    <\equation*>
      T<rsub|y>=C<rsub|y>+T<text|>
    </equation*>

    Hence as <math|C<rsub|y>> is of class <math|C<rsup|\<infty\>>> [see
    example: <reference|diff constant function is infinitely times
    differentiable>] and <math|T> is of class <math|C<rsup|n>> [see eq:
    <reference|eq 16.347.135>] it follows that\ 

    <\equation*>
      T<rsub|y><text| is of class >C<rsup|n>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)><text|
      >D<rsub|x>T<rsub|y>=D<rsub|x>C<rsub|y>+D<rsub|x>T=D<rsub|x>T
    </equation*>

    Hence <math|\<forall\>x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>>
    we have <math|<around*|\<\|\|\>|D<rsub|x>T<rsub|y>|\<\|\|\>><rsub|L<around*|(|X,X|)>>=<around*|\<\|\|\>|D<rsub|x>T|\<\|\|\>><rsub|L<around*|(|X,X|)>>\<leqslant\><rsub|<text|[eq:
    <reference|eq 16.350.134>]>><frac|1|2><rsub|<text|>>>. As <math|X> is a
    Banach space and <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    is convex we can apply the mean value theorem [theorem: <reference|diff
    mean value theorem (2)>] giving that\ 

    <\equation*>
      \<forall\>x<rsub|1>,x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>><text|
      we have ><around*|\<\|\|\>|T<rsub|y><around*|(|x<rsub|1>|)>-T<rsub|y><around*|(|x<rsub|2>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>>
    </equation*>

    proving that <math|<around*|(|T<rsub|y>|)><rsub|\|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>>
    is a contraction [see definition: <reference|metric contraction>]. As
    \ <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    is closed and <math|X> is a Banach space it follows from [theorem:
    <reference|complete closed subset of a complete space is complete>] that
    <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    is a Banach space. So we can use the Banach fixed point theorem [see:
    <reference|metric Banach fixed point theorem>] there exist a
    <with|font-series|bold|unique> <math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<sigma\>|)>|\<wide-bar\>>>
    such that <math|<around*|(|T<rsub|y>|)><rsub|\|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>><around*|(|x|)>=x>.
    Hence

    <\equation*>
      0=T<rsub|y><around*|(|x|)>-x=y+T<around*|(|x|)>-x=y+Id<rsub|X><around*|(|x|)>-f<around*|(|x|)>-x=y+x-f<around*|(|x|)>-x=y-f<around*|(|x|)>
    </equation*>

    so that\ 

    <\equation*>
      f<around*|(|x|)>=y
    </equation*>

    Further if <math|x<rprime|'>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    satisfies <math|f<around*|(|x<rprime|'>|)>=y> then

    <\equation*>
      <around*|(|T<rsub|y>|)><rsub|\|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>><around*|(|x|)>=T<rsub|y><around*|(|x<rprime|'>|)>=y+T<around*|(|x<rprime|'>|)>=y+Id<rsub|X><around*|(|x<rprime|'>|)>-f<around*|(|x<rprime|'>|)>=y+x<rprime|'>-y=x<rprime|'>
    </equation*>

    which as <math|x> was unique proves that <math|x=x<rprime|'>>. So we have
    found a unique <math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
  </proof>

  <\conjecture>
    <label|conjecture 16.246.135>There exist a
    <math|\<chi\>\<in\>\<bbb-R\><rsup|+>> with <math|\<chi\>\<less\>\<rho\>>
    such that for

    <\equation*>
      U<rsub|\<chi\>>=B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<chi\>|)><big|cap>f<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|)><text|
      >
    </equation*>

    we have\ 

    <\equation*>
      f<rsub|\|U<rsub|<lprime|`>x>>:U<rsub|\<chi\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)><text|
      is a bijection>
    </equation*>

    <\note>
      As <math|f> is of class <math|C<rsup|n>> it is of class
      <math|C<rsup|0>> hence continuous, so <math|U<rsub|\<chi\>>> is a open
      set\ 
    </note>
  </conjecture>

  <\proof>
    Take <math|\<chi\>=<frac|\<sigma\>|2>\<in\>\<bbb-R\><rsup|+>> then
    <math|\<chi\>\<less\>\<sigma\>\<leqslant\>\<rho\>> and we have for
    <math|f<rsub|\|U<rsub|<lprime|`>x>>:U<rsub|\<chi\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>>
    that

    <\description>
      <item*|surjectivity>Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>>
      then <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>|\<wide-bar\>>>.
      Using the previous conjecture [conjecture: <reference|conjecture
      16.245.134>] there exist a <with|font-series|bold|unique>
      <math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|\<wide-bar\>>>
      such that\ 

      <\equation>
        <label|eq 16.353.135>f<around*|(|x|)>=y
      </equation>

      We prove now by contradiction that\ 

      <\equation>
        <label|eq 16.354.135><around*|\<\|\|\>|x|\<\|\|\>>\<neq\>\<chi\>
      </equation>

      <\proof>
        Assume that <math|<around*|\<\|\|\>|x|\<\|\|\>>=\<chi\>>. As
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>>
        we have that <math|<around*|\<\|\|\>|y|\<\|\|\>>\<less\><frac|\<chi\>|2>>
        hence if we define <math|\<varepsilon\>=<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>.
        As <math|f> is of class <math|C<rsup|n>> <math|f> is of class
        <math|C<rsup|0>> hence continuous. So there exist a
        <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that if
        <math|z\<in\>U> with <math|<around*|\<\|\|\>|x-z|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|z|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take now <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,<frac|\<sigma\>|4>|)>>
        and <math|x<rsub|1>=<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\>x>
        then we have <math|<around*|\<\|\|\>|x<rsub|1>-x|\<\|\|\>>=<around*|\<\|\|\>|x+<frac|\<delta\>|\<chi\>>\<cdot\>x-x|\<\|\|\>>=<frac|\<delta\>|\<chi\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>>=\<chi\>>\<delta\>\<less\>\<delta\><rprime|'>>
        so that

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|1>|)>|\<\|\|\>>\<less\>\<varepsilon\>=<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x+f<around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.353.135>]>>>|<cell|<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<chi\>|2>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          f<around*|(|x<rsub|1>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>|\<wide-bar\>>
        </equation*>

        Using the previous conjecture [conjecture: <reference|conjecture
        16.245.134>] again there exist a <math|x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|\<wide-bar\>>>
        such that

        <\equation*>
          f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>
        </equation*>

        Further we have\ 

        <\equation*>
          <around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\>x|\<\|\|\>>=<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>=<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\>\<chi\>=\<chi\>+\<delta\>=<frac|\<sigma\>|2>+\<delta\>\<less\><frac|\<sigma\>|2>+<frac|\<sigma\>|4>\<less\>\<sigma\>\<leqslant\>\<rho\>
        </equation*>

        so that

        <\equation>
          <label|eq 16.355.135>x<rsub|1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>
        </equation>

        Further <math|x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|\<wide-bar\>>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<chi\>|)>|\<wide-bar\>>>

        \;
      </proof>

      <item*|injectivity>
    </description>

    \;
  </proof>

  <\proof>
    For the function\ 

    <\equation*>
      f<rsub|\|U<rsub|\<rho\>>>:U<rsub|\<rho\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>
    </equation*>

    we have:\ 

    <\description>
      <item*|surjectivity>Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>>
      then <math|y\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>|\<wide-bar\>>>
      so that by the previous conjecture [conjecture: <reference|conjecture
      16.245.136>]\ 

      <\equation>
        <label|eq 16.359.136><text|There exist a
        <with|font-series|bold|unique >>x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>><text|
        such that >f<around*|(|x|)>=y\<less\><frac|\<rho\>|2>
      </equation>

      We prove now by contradiction that\ 

      <\equation>
        <label|eq 16.360.136><around*|\<\|\|\>|x|\<\|\|\>>\<neq\><frac|\<rho\>|2>
      </equation>

      <\proof>
        Assume that <math|<around*|\<\|\|\>|x|\<\|\|\>>=<frac|\<rho\>|2>>. As
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>>
        we have that <math|<around*|\<\|\|\>|y|\<\|\|\>>\<less\><frac|\<rho\>|2>>
        so that <math|\<varepsilon\>=<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>.
        As <math|f> is of class <math|C<rsup|n>> <math|f> is of class
        <math|C<rsup|0>> hence continuous, so there exist a
        <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that if
        <math|z\<in\>U> with <math|<around*|\<\|\|\>|x-z|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        then we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|z|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Define <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,<frac|\<rho\>|2>|)>\<in\>\<bbb-R\><rsup|+>>
        and <math|x<rsub|1>=<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\>x>
        then we have\ 

        <\equation*>
          <around*|\<\|\|\>|x-x<rsub|1>|\<\|\|\>>=<around*|\<\|\|\>|x-<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\>x|\<\|\|\>>=<around*|\<\|\|\>|<frac|2\<cdot\>\<delta\>|\<rho\>>\<cdot\>x|\<\|\|\>>=<frac|2\<cdot\>\<delta\>|\<rho\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>>=<frac|\<rho\>|2>><frac|2\<cdot\>\<delta\>|\<rho\>>\<cdot\><frac|\<rho\>|2>=\<delta\>\<less\>\<delta\><rprime|'>
        </equation*>

        so that\ 

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|1>|)>|\<\|\|\>>\<less\>\<varepsilon\>=<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x+f<around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.359.136>]]>>>|<cell|<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<rho\>|2>>>>>
        </eqnarray*>

        proving that <math|f<around*|(|x<rsub|1>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>|\<wide-bar\>>>.
        Hence we can use [conjecture: <reference|conjecture 16.245.136>]
        again to get a\ 

        <\equation>
          <label|eq 16.361.136><text|There exist a
          <with|font-series|bold|unique> >x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>><text|
          such that >f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>
        </equation>

        Now as <math|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\>x|\<\|\|\>>=<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>>=<frac|\<rho\>|2>><around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\><frac|\<rho\>|2>=<frac|\<rho\>|2>+\<delta\>\<less\><frac|\<rho\>|2>+<frac|\<rho\>|2>=\<rho\>>
        proving that <math|x<rsub|1>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>>>.
        Hence by the uniqueness in [eq: <reference|eq 16.361.136>] it follows
        that

        <\equation>
          <label|eq 16.362.136>x<rsub|1>=x<rsub|2>
        </equation>

        As <math|x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>>>
        we have that\ 

        <\equation*>
          <around*|\<\|\|\>|x<rsub|2>|\<\|\|\>>\<leqslant\>\<rho\>\<less\>\<rho\>\<cdot\><around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>=\<rho\>
        </equation*>

        \;
      </proof>

      <item*|injectivity>
    </description>

    \;
  </proof>

  <\proof>
    First we define the following translations

    <\equation*>
      \<forall\>y\<in\>X<text| define >\<tau\><rsub|X,y>:X\<rightarrow\>X<text|
      by >\<tau\><rsub|X,y><around*|(|z|)>=y+z
    </equation*>

    <\equation*>
      \<forall\>y\<in\>Y<text| define <math|\<tau\><rsub|Y,y>:Y\<rightarrow\>Y<text|
      by >\<tau\><rsub|Y,y><around*|(|z|)>=y+z>>
    </equation*>

    Note that we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<tau\><rsub|X,y>\<circ\>\<tau\><rsub|X,-y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|X,y><around*|(|\<tau\><rsub|X,-y><around*|(|z|)>|)>=\<tau\><rsub|X,y><around*|(|<around*|(|-y|)>+z|)>=y+<around*|(|-y|)>+z=Id<rsub|X><around*|(|z|)>>>|<row|<cell|<around*|(|\<tau\><rsub|X,-y>\<circ\>\<tau\><rsub|X,y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|X,-y><around*|(|\<tau\><rsub|X,y><around*|(|z|)>|)>=\<tau\><rsub|X,y><around*|(|y+z|)>=<around*|(|-y|)>+y+z=Id<rsub|X><around*|(|z|)>>>|<row|<cell|<around*|(|\<tau\><rsub|Y,y>\<circ\>\<tau\><rsub|Y,-y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|Y,y><around*|(|\<tau\><rsub|Y,-y><around*|(|z|)>|)>=\<tau\><rsub|Y,y><around*|(|<around*|(|-y|)>+z|)>=y+<around*|(|-y|)>+z=Id<rsub|X><around*|(|z|)>>>|<row|<cell|<around*|(|\<tau\><rsub|Y,-y>\<circ\>\<tau\><rsub|Y,y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|Y,-y><around*|(|\<tau\><rsub|Y,y><around*|(|z|)>|)>=\<tau\><rsub|Y,y><around*|(|y+z|)>=<around*|(|-y|)>+y+z=Id<rsub|X><around*|(|z|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.382.139>\<forall\>y\<in\>X<text| >\<tau\><rsub|X,y><text|
      is a bijection and ><around*|(|\<tau\><rsub|X,y>|)><rsup|-1>=\<tau\><rsub|X,-y>
    </equation>

    <\equation>
      <label|eq 16.383.139>\<forall\>y\<in\>Y<text| >\<tau\><rsub|Y,y><text|
      is a bijection and ><around*|(|\<tau\><rsub|Y,y>|)><rsup|-1>=\<tau\><rsub|Y,-y>
    </equation>

    Further using [example: <reference|diff translation is infinite
    differentiable>] it follows that

    <\equation*>
      \<forall\>y\<in\>X<text| >\<tau\><rsub|X,y><text| is of class
      >C<rsup|\<infty\>><text| and >\<forall\>y\<in\>Y<text|
      >\<tau\><rsub|Y,y><text| is of class >C<rsup|\<infty\>><text|>
    </equation*>

    \;

    <\equation*>
      \;
    </equation*>

    \;
  </proof>

  So by the above and [eqs: <reference|eq 16.382.139>, <reference|eq
  16.383.139>] it follows tha

  <\equation>
    <label|eq 16.384.139>\<forall\>y\<in\>X<text| >\<tau\><rsub|X,y><text| is
    a diffeomorphism of class >\<cap\>\<forall\>y\<in\>Y<text|
    >\<tau\><rsub|Y,y><text| is a diffeomorphism of class >C<rsup|\<infty\>>
  </equation>

  Define\ 

  <\equation>
    <label|eq 16.382.139>h=\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>\<tau\><rsub|X,x<rsub|0>>:<around*|(|\<tau\><rsub|X,x<rsub|0>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y
  </equation>

  As <math|x<rsub|0>\<in\>U> that <math|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>=x<rsub|0>+0=x<rsub|0>\<in\>U>
  so that <math|0\<in\><around*|(|\<tau\><rsub|X,x<rsub|0>>|)><rsup|-1><around*|(|U|)>>,
  further we have

  <\eqnarray*>
    <tformat|<table|<row|<cell|h<around*|(|0|)>>|<cell|=>|<cell|<around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>\<tau\><rsub|X,x<rsub|0>>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|0<eq-number><label|eq
    16.383.139>>>>>
  </eqnarray*>

  Further as <math|f> is of class <math|C<rsup|n>> and
  <math|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>>,
  <math|\<tau\><rsub|X,x<rsub|0>>> are of class <math|C<rsup|\<infty\>>> it
  follows from the chain rule [theorem: <reference|diff chain rule higher
  order class>] that <math|h> is of class <math|C<rsup|n>> and\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|D<rsub|0>h>|<cell|=>|<cell|D<rsub|0><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>\<tau\><rsub|X,x<rsub|0>>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|0><around*|(|<around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>\<circ\>\<tau\><rsub|X,x<rsub|0>>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>\<circ\>D<rsub|0>\<tau\><rsub|X,x<rsub|0>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
    <reference|diff translation is infinite
    differentiable>]>>>|<cell|D<rsub|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>\<circ\>Id<rsub|X>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x<rsub|0>><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|x<rsub|0>|)>>\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>D<rsub|x<rsub|0>>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
    <reference|diff translation is infinite
    differentiable>]>>>|<cell|Id<rsub|Y>\<circ\>D<rsub|x<rsub|0>>f>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x<rsub|0>>f>>>>
  </eqnarray*>

  Hence as <math|D<rsub|x<rsub|0>>f\<in\>L<around*|(|X,Y|)>> is a bijection
  <math|D<rsub|0>h> is a isomorphism. So the conditions for [proposition:
  <reference|proposition 16.249.138>] are satisifed. Hence there exist open
  sets <math|U<rsub|0>>, <math|V<rsub|0>> with <math|0\<in\>U<rsub|0>>,
  <math|0\<in\>V<rsub|0>> such that\ 

  <\equation>
    <label|eq 16.387.138>h<rsub|\|U<rsub|0>>:U<rsub|0>\<rightarrow\>V<rsub|0><text|
    is a diffeomorphism of class >C<rsup|n>
  </equation>

  Define now <math|U<rsub|x<rsub|0>>=<around*|(|\<tau\><rsub|X,-x<rsub|0>>|)><rsup|-1><around*|(|U<rsub|0>|)>>,
  <math|V<rsub|x<rsub|0>>=<around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>|)><rsup|-1><around*|(|V<rsub|0>|)>=\<tau\><rsub|Y,f<around*|(|x<rsub|0>|)>><around*|(|V<rsub|0>|)>>
  then, as <math|><math|\<tau\><rsub|X,-x<rsub|0>>>,<math|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>>
  are of class <math|C<rsup|\<infty\>>>, <math|U<rsub|x<rsub|0>>> is open in
  <math|X> and <math|V<rsub|x<rsub|0>>> is open in <math|Y>. From
  <math|\<tau\><rsub|X,-x<rsub|0>><around*|(|x<rsub|0>|)>=0\<in\>U<rsub|0>>
  it follows that <math|x<rsub|0>\<in\>U<rsub|x<rsub|0>>>, further
  <math|f<around*|(|x<rsub|0>|)>=\<tau\><rsub|X,f<around*|(|x<rsub|0>|)>><around*|(|0|)>\<in\>V<rsub|x<rsub|0>>>.
  So we have\ 

  <\equation*>
    U<rsub|x<rsub|0>>,V<rsub|x<rsub|0>><text| are open,
    >x<rsub|0>\<in\>U<rsub|x<rsub|0>><text| and
    >f<around*|(|x<rsub|0>|)>\<in\>V<rsub|x<rsub|0>>
  </equation*>

  Using \ [theorem: <reference|function restriction of a function>] we have
  that\ 

  <\equation*>
    \<tau\><rsub|X,>
  </equation*>

  Define then the following bijection [see <reference|function composition
  injectivity, surjectivity and bijectivity (1)>]

  <\equation*>
    g=\<tau\><rsub|Y,f<around*|(|x<rsub|0>|)>>\<circ\>h<rsub|\|U<rsub|0>>\<circ\>\<tau\><rsub|X,-x<rsub|0>>:U<rsub|x<rsub|0>>=<around*|(|\<tau\><rsub|X,-x<rsub|0>>|)><rsup|-1><around*|(|U<rsub|0>|)>\<rightarrow\>\<tau\><rsub|><rsub|>
  </equation*>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|open mapping theorem|5>>
    <associate|auto-2|<tuple|sum over a countable set|8>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>|18>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<Delta\><rsub|i,j>>|19>>
    <associate|auto-5|<tuple|1|23>>
    <associate|complete open mapping theorem|<tuple|5|5>>
    <associate|conjecture 16.245.134|<tuple|32|38>>
    <associate|conjecture 16.246.135|<tuple|33|39>>
    <associate|continuity L(X,L(Y,Z)) is isometric with
    L(X,Y;Z)|<tuple|21|19>>
    <associate|countable union of a finite family of countable sets is
    countable|<tuple|4|4>>
    <associate|diff (i-\<gtr\>x)|<tuple|17|18>>
    <associate|diff delta function|<tuple|20|19>>
    <associate|eq 12.10.131|<tuple|1|1>>
    <associate|eq 12.11.131|<tuple|2|1>>
    <associate|eq 12.12.131|<tuple|3|1>>
    <associate|eq 12.13.131|<tuple|4|2>>
    <associate|eq 12.14.131|<tuple|5|2>>
    <associate|eq 12.15.131|<tuple|6|2>>
    <associate|eq 12.281.126|<tuple|97|35>>
    <associate|eq 14.110.151|<tuple|7|2>>
    <associate|eq 14.111.151|<tuple|8|2>>
    <associate|eq 14.112.151|<tuple|9|3>>
    <associate|eq 14.113.151|<tuple|10|3>>
    <associate|eq 14.211.159|<tuple|23|13>>
    <associate|eq 14.212.159|<tuple|24|14>>
    <associate|eq 14.213.159|<tuple|25|14>>
    <associate|eq 14.214.159|<tuple|26|14>>
    <associate|eq 14.215.159|<tuple|27|14>>
    <associate|eq 14.216.159|<tuple|28|15>>
    <associate|eq 14.217.159|<tuple|29|15>>
    <associate|eq 14.218.159|<tuple|30|15>>
    <associate|eq 14.219.160|<tuple|32|15>>
    <associate|eq 14.219.161|<tuple|31|15>>
    <associate|eq 14.220.159|<tuple|33|15>>
    <associate|eq 14.221.519|<tuple|34|15>>
    <associate|eq 14.222.159|<tuple|36|16>>
    <associate|eq 14.223.159.1|<tuple|35|15>>
    <associate|eq 14.225.161|<tuple|37|16>>
    <associate|eq 14.226.161|<tuple|38|16>>
    <associate|eq 14.227\<point\>161|<tuple|39|17>>
    <associate|eq 14.228.161|<tuple|40|17>>
    <associate|eq 14.229.161|<tuple|41|17>>
    <associate|eq 14.230.161|<tuple|42|18>>
    <associate|eq 14.241.164|<tuple|11|5>>
    <associate|eq 14.242.164|<tuple|12|5>>
    <associate|eq 14.243.164|<tuple|13|6>>
    <associate|eq 14.246.165|<tuple|14|6>>
    <associate|eq 14.247.165|<tuple|15|6>>
    <associate|eq 14.248.165|<tuple|16|6>>
    <associate|eq 14.249.165|<tuple|17|6>>
    <associate|eq 14.250.165|<tuple|18|6>>
    <associate|eq 14.251.165|<tuple|19|7>>
    <associate|eq 14.252.165|<tuple|20|7>>
    <associate|eq 14.253.165|<tuple|21|7>>
    <associate|eq 14.254.165|<tuple|22|7>>
    <associate|eq 14.75.149|<tuple|43|19>>
    <associate|eq 14.76.149|<tuple|44|20>>
    <associate|eq 14.77.149|<tuple|45|20>>
    <associate|eq 14.78.149|<tuple|46|20>>
    <associate|eq 14.79.149|<tuple|47|20>>
    <associate|eq 14.80.149|<tuple|48|20>>
    <associate|eq 14.81.150|<tuple|49|20>>
    <associate|eq 14.82.149|<tuple|50|21>>
    <associate|eq 14.83.150|<tuple|51|21>>
    <associate|eq 14.84.149|<tuple|52|21>>
    <associate|eq 14.85.150|<tuple|53|21>>
    <associate|eq 14.86.150|<tuple|54|21>>
    <associate|eq 14.87.150|<tuple|55|21>>
    <associate|eq 14.88.150|<tuple|56|22>>
    <associate|eq 14.89.150|<tuple|57|22>>
    <associate|eq 14.90.150|<tuple|58|22>>
    <associate|eq 16.122.194|<tuple|65|25>>
    <associate|eq 16.123.194|<tuple|66|25>>
    <associate|eq 16.124.194|<tuple|67|25>>
    <associate|eq 16.125.194|<tuple|68|25>>
    <associate|eq 16.126.194|<tuple|69|26>>
    <associate|eq 16.127.194|<tuple|70|26>>
    <associate|eq 16.128.194|<tuple|71|26>>
    <associate|eq 16.129.194|<tuple|72|26>>
    <associate|eq 16.130.194|<tuple|73|27>>
    <associate|eq 16.200.124|<tuple|86|32>>
    <associate|eq 16.261.222|<tuple|74|29>>
    <associate|eq 16.280.125.1|<tuple|75|30>>
    <associate|eq 16.280.126|<tuple|100|36>>
    <associate|eq 16.281.125|<tuple|76|30>>
    <associate|eq 16.281.126|<tuple|101|36>>
    <associate|eq 16.282.125|<tuple|77|31>>
    <associate|eq 16.282.126|<tuple|102|36>>
    <associate|eq 16.283.126|<tuple|103|36>>
    <associate|eq 16.284.124|<tuple|82|31>>
    <associate|eq 16.285.124|<tuple|80|31>>
    <associate|eq 16.286.124|<tuple|81|31>>
    <associate|eq 16.288.125|<tuple|83|31>>
    <associate|eq 16.289.124|<tuple|84|32>>
    <associate|eq 16.290.126|<tuple|85|32>>
    <associate|eq 16.291.124|<tuple|87|33>>
    <associate|eq 16.292.125|<tuple|88|33>>
    <associate|eq 16.293.125|<tuple|89|33>>
    <associate|eq 16.294.125|<tuple|90|33>>
    <associate|eq 16.295.125|<tuple|91|33>>
    <associate|eq 16.296.125|<tuple|92|33>>
    <associate|eq 16.297.125|<tuple|93|33>>
    <associate|eq 16.298.125|<tuple|94|33>>
    <associate|eq 16.300.126|<tuple|95|34>>
    <associate|eq 16.353.135|<tuple|104|39>>
    <associate|eq 16.354.135|<tuple|105|39>>
    <associate|eq 16.355.135|<tuple|106|40>>
    <associate|eq 16.359.136|<tuple|107|40>>
    <associate|eq 16.360.136|<tuple|108|40>>
    <associate|eq 16.361.136|<tuple|109|41>>
    <associate|eq 16.362.136|<tuple|110|41>>
    <associate|eq 16.382.139|<tuple|114|?>>
    <associate|eq 16.383.139|<tuple|115|?>>
    <associate|eq 16.384.139|<tuple|113|?>>
    <associate|eq 16.387.138|<tuple|116|?>>
    <associate|eq 16.45.185|<tuple|59|23>>
    <associate|eq 16.46.185|<tuple|60|23>>
    <associate|eq 16.47.185|<tuple|61|23>>
    <associate|eq 18.283.124|<tuple|78|31>>
    <associate|lemma 14.360.158|<tuple|10|10>>
    <associate|lemma 14.364.159|<tuple|14|13>>
    <associate|lemma 16.104.194|<tuple|23|23>>
    <associate|lemma 16.105.194|<tuple|24|24>>
    <associate|lemma 16.106.194|<tuple|25|26>>
    <associate|lemma 16.107.194|<tuple|26|27>>
    <associate|lemma 16.108.194|<tuple|27|28>>
    <associate|lemma 16.190.122|<tuple|28|29>>
    <associate|lemma 16.201.126|<tuple|30|35>>
    <associate|lemma 16.24.178|<tuple|18|18>>
    <associate|lemma 16.25.178|<tuple|19|18>>
    <associate|series absolute convergence alternative
    definition|<tuple|11|11>>
    <associate|series absolute convergence commutativity countable
    sums|<tuple|8|8>>
    <associate|series absolute convergence countable family|<tuple|7|8>>
    <associate|series absolute convergence dominant
    convergence|<tuple|13|13>>
    <associate|series absolute convergence of countable families
    condition|<tuple|12|12>>
    <associate|series absolute convergence sum and scalar
    product|<tuple|9|9>>
    <associate|series absolute convergent countable
    associativity|<tuple|15|14>>
    <associate|series absolute sum over a countable set|<tuple|6|8>>
    <associate|series distributivity|<tuple|16|17>>
    <associate|series lemma 14.342|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|open mapping theorem>|<pageref|auto-1>>

      <tuple|<tuple|sum over a countable set>|<pageref|auto-2>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|\<Delta\><rsub|i,j>>>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|2tab>|1<space|2spc>Product of
      <with|mode|<quote|math>|n>-times differentiable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>