(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00001100101011010011000)))
;; x should be Float32(0x80065698 [Rational(-51923, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01111110 #b01000011000010010101101)))
;; y should be Float32(0x3F2184AD [Rational(10585261, 16777216), 0.630931])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x3F2184AC)))
(check-sat)
(exit)
