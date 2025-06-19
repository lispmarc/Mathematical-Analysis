<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Affine Spaces>

  <section|Definition and properties>

  <\definition>
    <label|affine space>Let <math|n\<in\>\<bbb-N\>> then a
    <with|font-series|bold|real affine space of dimension ><math|n> is a pair
    <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> where <math|A> is a
    set called the <with|font-series|bold|set of points> and
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a
    <math|n>-dimensional vector space over the field <math|\<bbb-R\>> called
    the <with|font-series|bold|space of displacements> or the
    <with|font-series|bold|space of free vactors> together with a operator\ 

    <\equation*>
      \<ominus\>:A<rsup|n>\<times\>A<rsup|n>\<rightarrow\>V
    </equation*>

    satisfying:\ 

    <\enumerate>
      <item><math|\<forall\>P,Q,R\<in\>A<rsup|n>> we have
      <math|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>R|)>=P\<ominus\>R>

      <item><math|\<forall\>P\<in\>A<rsup|n>>,
      <math|\<forall\><wide|v|\<vect\>>\<in\>V> there exist a
      <with|font-series|bold|unique> <math|Q\<in\>A<rsup|n>> such that
      <math|<wide|v|\<vect\>>=P\<ominus\>Q>\ 
    </enumerate>

    <\notation>
      We use the follloing notation conventions:\ 

      <\enumerate>
        <item>Elements of <math|A<rsup|n>> are called points and are noted as
        upper case symbols. Examples are <math|P,R,R,P<rsub|1>,P<rsub|2>>,
        etc.

        <item>Elements of <math|V> are called vectors and are noted with a
        lower case letter beneath a arrow. Examples are
        <math|<wide|v|\<vect\>>>, <math|<wide|u|\<vect\>>>,
        <math|<wide|v<rsub|1>|\<vect\>>> etc.

        <item>If <math|<around*|(|p,<wide|v|\<vect\>>|)>\<in\>A<rsup|n>\<times\>V>
        then <with|font-series|bold|unique> point <math|Q\<in\>A<rsup|n>>
        such that <math|<wide|v|\<vect\>>=P\<ominus\>Q> is noted as
        <math|P\<oplus\><wide|v|\<vect\>>>. Using this notation we have that
        <math|P\<oplus\><wide|v|\<vect\>>\<in\>A<rsup|n>> and
        <math|P\<ominus\><around*|(|P\<oplus\><wide|v|\<vect\>>|)>=<wide|v|\<vect\>>>
        <math|\<forall\><around*|(|P,<wide|v|\<vect\>>|)>\<in\>A<rsup|n>\<times\>V>

        <item>The operators <math|+,\<cdot\>,-> are always the traditional
        operators in the vector space <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
        and the field <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>.
      </enumerate>
    </notation>

    \;
  </definition>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|20>
    <associate|page-first|?>
    <associate|page-medium|papyrus>
    <associate|section-nr|7>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|affine space|<tuple|21.1|?>>
    <associate|auto-1|<tuple|21|?>>
    <associate|auto-2|<tuple|21.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|21<space|2spc>Affine
      Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      21.1<space|2spc>Definition and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>
    </associate>
  </collection>
</auxiliary>