(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x806A4CD5)))
;; y should be Float32(0x806A4CD5 [Rational(-6966485, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111001 #b00011110000010001101001)))
;; z should be Float32(0x7C8F0469 [Rational(5940703194927671642536032689587224576), 5940703194927671642536032689587224576.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
