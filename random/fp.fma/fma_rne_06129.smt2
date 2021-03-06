(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00100010 #b00011110100000001110100)))
;; x should be Float32(0x910F4074 [Rational(-2347037, 20769187434139310514121985316880384), -0.000000])

(declare-const y Float32)
(assert (= y (_ NaN 8 24)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCA1C1202)))
;; z should be Float32(0xCA1C1202 [Rational(-5114113, 2), -2557056.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b11111111 #b11111111111111111111111)))
(check-sat)
(exit)
