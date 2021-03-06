(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b01010001001011011001111)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCAAE3B55)))
;; y should be Float32(0xCAAE3B55 [Rational(-11418453, 2), -5709226.500000])

(declare-const z Float32)
(assert (= z (_ +oo 8 24)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b11111111 #b11111111111111111111111)))
(check-sat)
(exit)
