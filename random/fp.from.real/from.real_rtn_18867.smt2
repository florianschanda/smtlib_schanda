(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x189A6759)))
;; x should be Float32(0x189A6759 [Rational(10119001, 2535301200456458802993406410752), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 50595015827.0 12676506002282294014967032053760000.0))))
;; w should be Float32(0x189A675B [Rational(10119003, 2535301200456458802993406410752), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
