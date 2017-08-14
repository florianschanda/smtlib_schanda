(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11010001110011000001111)))
;; x should be Float32(0xCAE8E60F [Rational(-15263247, 2), -7631623.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 3052649403.0 400.0)))))
;; w should be Float32(0xCAE8E60F [Rational(-15263247, 2), -7631623.500000])

(assert (= x w))
(check-sat)
(exit)
