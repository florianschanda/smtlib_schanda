(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01101001001001000001000)))
;; x should be Float32(0x80349208 [Rational(-430657, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F800000)))
;; y should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.div RTN x y)))
(assert (= result ((_ to_fp 8 24) #x80000000)))
(check-sat)
(exit)
