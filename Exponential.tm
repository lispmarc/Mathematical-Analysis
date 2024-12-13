<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|smart-ref>>

<\body>
  <chapter|The exponational function>

  <section|Power series>

  <subsection|Definition and converge domain>

  <\definition>
    <label|exp power series><index|power series><index|<math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>><dueto|Power
    Series>A <with|font-series|bold|power series> is a expression of the form

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    where <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>
    is a sequence of complex numbers. If for a given <math|z\<in\>\<bbb-C\>>
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    converges then <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    referes to the limit <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>.
  </definition>

  <\note>
    We have bit of notation overloading here the same expression
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    stands for\ 

    <\enumerate>
      <item>A <with|font-series|bold|power series> which is essenetial
      another notation of a family <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>

      <item>A series if we have chosen a certain a complex number <math|z>.

      <item>The <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>
      [which is a value in <math|\<bbb-C\>>] if the series
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
      converges.
    </enumerate>

    We use context to figure out which meaning must be attached to the
    expression <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>.
  </note>

  Given a sequence <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>
  then the convergence of <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
  depends on the value of <math|z>, the convergence domain captures this
  idea.

  <\definition>
    <label|exp convergence domain><index|convergence domain><index|absolute
    convergence domain><index|<math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>><index|<math|<wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>>>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power series then

    <\enumerate>
      <item>The <with|font-series|bold|convergence domain of
      ><math|><math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
      noted as <math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
      is defined by\ 

      <\equation*>
        \<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=<around*|{|z\<in\>\<bbb-C\>\|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i><text|
        converges>|}>
      </equation*>

      <item>The <with|font-series|bold|absolute convergence domain of
      ><math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
      noted as <math|<wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>>
      is defined by\ 

      <\equation*>
        <wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>=<around*|{|z\<in\>\<bbb-C\>\|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>\<cdot\>z<rsup|i>|\|><text|
        converges>|}>
      </equation*>
    </enumerate>
  </definition>

  <\theorem>
    <label|exp convergence domains property>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power serie then we have\ 

    <\equation*>
      0\<in\>\<cal-D\><wide|<around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
    </equation*>
  </theorem>

  <\proof>
    \;
  </proof>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|1171>
    <associate|page-medium|paper>
    <associate|section-nr|4>
    <associate|subsection-nr|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|19|1171>>
    <associate|auto-2|<tuple|19.1|1171>>
    <associate|auto-3|<tuple|19.1.1|?>>
    <associate|auto-4|<tuple|power series|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|?>>
    <associate|auto-6|<tuple|convergence domain|?>>
    <associate|auto-7|<tuple|absolute convergence domain|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|<wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>>|?>>
    <associate|exp convergence domain|<tuple|19.3|?>>
    <associate|exp convergence domains property|<tuple|19.4|?>>
    <associate|exp power series|<tuple|19.1|?>>
    <associate|power series|<tuple|19.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|19<space|2spc>The
      exponational function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      19.1<space|2spc>Power series <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>
    </associate>
  </collection>
</auxiliary>