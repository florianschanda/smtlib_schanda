(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11101010 #b00000001110111011110001)))
;; x should be Float32(0x7500EEF1 [Rational(163442457364573479423379643564032), 163442457364573479423379643564032.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11111111111111111111111)))
;; y should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b10100000011010000001101)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)
