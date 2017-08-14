(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AC23383)))
;; x should be Float32(0x4AC23383 [Rational(12727171, 2), 6363585.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 50908687.0 8.0))))
;; w should be Float32(0x4AC23384 [Rational(6363586), 6363586.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
