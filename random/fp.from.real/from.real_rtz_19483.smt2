(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA721832)))
;; x should be Float32(0xCA721832 [Rational(-7932953, 2), -3966476.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 12722995.0 8.0))))
;; w should be Float32(0x49C22333 [Rational(12722995, 8), 1590374.375000])

(assert (distinct x w))
(check-sat)
(exit)
