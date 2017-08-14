(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCADA09F5)))
;; x should be Float32(0xCADA09F5 [Rational(-14289397, 2), -7144698.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- 7144700.0))))
;; w should be Float32(0xCADA09F8 [Rational(-7144700), -7144700.000000])

(assert (distinct x w))
(check-sat)
(exit)
