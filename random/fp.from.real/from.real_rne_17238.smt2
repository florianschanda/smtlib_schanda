(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 2.0))))
;; w should be Float32(0xC0000000 [Rational(-2), -2.000000])

(assert (distinct x w))
(check-sat)
(exit)
