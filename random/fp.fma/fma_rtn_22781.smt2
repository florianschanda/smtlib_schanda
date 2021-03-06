(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010010 #b00100100110110000001000)))
;; y should be Float32(0x49126C08 [Rational(1199489, 2), 599744.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b01100111101010010100011)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
