(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00010110011010001110111)))
;; x should be Float32(0x000B3477 [Rational(734327, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(734327, 713623846352979940529142984724747568191373312)

(assert (not (= y (/ 734327.0 713623846352979940529142984724747568191373312.0))))
(check-sat)
(exit)
