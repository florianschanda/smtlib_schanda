(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC994B6C4)))
;; x should be Float32(0xC994B6C4 [Rational(-2436529, 2), -1218264.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 2540087.0 16.0)))))
;; w should be Float32(0xC81B08DC [Rational(-2540087, 16), -158755.437500])

(assert (distinct x w))
(check-sat)
(exit)
