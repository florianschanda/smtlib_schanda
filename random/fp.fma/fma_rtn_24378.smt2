(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00111110000010111001101)))
;; x should be Float32(0xCA9F05CD [Rational(-10421709, 2), -5210854.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA8746F7)))
;; y should be Float32(0xCA8746F7 [Rational(-8865527, 2), -4432763.500000])

(declare-const z Float32)
(assert (= z (_ +zero 8 24)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b10101011 #b01010000001000001001000)))
(check-sat)
(exit)
