(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0033B8B2)))
;; x should be Float32(0x0033B8B2 [Rational(1694809, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11111111111111111111111)))
;; y should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00010110110000100111000)))
;; z should be Float32(0x000B6138 [Rational(93223, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x000B6137))))
(check-sat)
(exit)
