(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49C661DC)))
;; x should be Float32(0x49C661DC [Rational(3250295, 2), 1625147.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 325029521.0 200.0))))
;; w should be Float32(0x49C661DC [Rational(3250295, 2), 1625147.500000])

(assert (not (= x w)))
(check-sat)
(exit)
