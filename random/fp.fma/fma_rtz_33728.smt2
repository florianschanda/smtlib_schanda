(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11010010001010100100101)))
;; x should be Float32(0x80691525 [Rational(-6886693, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b01111111010100110111010)))
;; y should be Float32(0x003FA9BA [Rational(2086109, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b00000000000000000000000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
