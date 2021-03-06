(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007FFFFF)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010000 #b10101011000110111100000)))
;; y should be Float32(0x48558DE0 [Rational(437359, 2), 218679.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b01001010000010011110101)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)
