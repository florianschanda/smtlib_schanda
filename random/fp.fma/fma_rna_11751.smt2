(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC9AF2A54)))
;; y should be Float32(0xC9AF2A54 [Rational(-2869909, 2), -1434954.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11110011001010010010111)))
;; z should be Float32(0x00799497 [Rational(7967895, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b0 #b00010101 #b01011110010101001011010)))
(check-sat)
(exit)
