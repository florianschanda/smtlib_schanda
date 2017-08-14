(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC782D640)))
;; x should be Float32(0xC782D640 [Rational(-133977, 2), -66988.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 964250047.0 51200.0))))
;; w should be Float32(0x46932204 [Rational(2410625, 128), 18833.007812])

(assert (not (distinct x w)))
(check-sat)
(exit)
