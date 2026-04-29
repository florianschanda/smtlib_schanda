(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11010001110011000001111)))
;; x should be Float32(0xCAE8E60F [Rational(-15263247, 2), -7631623.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 244211965.0 32.0)))))
;; w should be Float32(0xCAE8E610 [Rational(-7631624), -7631624.000000])

(assert (distinct x w))
(check-sat)
(exit)
