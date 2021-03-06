(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01110000 #b01101010010010111110010)))
;; x should be Float32(0x383525F2 [Rational(5935865, 137438953472), 0.000043])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)
