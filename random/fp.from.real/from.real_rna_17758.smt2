(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11010111100101111101111)))
;; x should be Float32(0x4AEBCBEF [Rational(15453167, 2), 7726583.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 269201459.0 64.0))))
;; w should be Float32(0x4A805D82 [Rational(4206273), 4206273.000000])

(assert (distinct x w))
(check-sat)
(exit)
