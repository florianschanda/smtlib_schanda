(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ADBC657)))
;; x should be Float32(0x4ADBC657 [Rational(14403159, 2), 7201579.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 921802233.0 128.0))))
;; w should be Float32(0x4ADBC658 [Rational(7201580), 7201580.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
