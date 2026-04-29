(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ADA18EF)))
;; x should be Float32(0x4ADA18EF [Rational(14293231, 2), 7146615.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 57172927.0 8.0))))
;; w should be Float32(0x4ADA18F0 [Rational(7146616), 7146616.000000])

(assert (distinct x w))
(check-sat)
(exit)
