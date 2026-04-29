(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC95EA598)))
;; x should be Float32(0xC95EA598 [Rational(-1823923, 2), -911961.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 7810022943.0 80000.0)))))
;; w should be Float32(0xC7BEACA5 [Rational(-12496037, 128), -97625.289062])

(assert (distinct x w))
(check-sat)
(exit)
