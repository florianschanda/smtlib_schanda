(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11000101000011001010011)))
;; x should be Float32(0xCAE28653 [Rational(-14845523, 2), -7422761.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10101010 #b01001001011100110111110)))
;; y should be Float32(0xD524B9BE [Rational(-11319853973504), -11319853973504.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b0 #b11000001 #b00100011100001001101000)))
(check-sat)
(exit)
