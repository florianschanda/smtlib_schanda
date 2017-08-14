(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49C661DC)))
;; x should be Float32(0x49C661DC [Rational(3250295, 2), 1625147.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 6482373.0 16.0)))))
;; w should be Float32(0xC8C5D38A [Rational(-6482373, 16), -405148.312500])

(assert (not (distinct x w)))
(check-sat)
(exit)
