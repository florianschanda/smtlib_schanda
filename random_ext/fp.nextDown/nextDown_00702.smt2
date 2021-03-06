(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AC75657)))
;; x should be Float32(0x4AC75657 [Rational(13063767, 2), 6531883.500000])

(declare-const result Float32)
(assert (= result (fp.nextDown x)))
(assert (not (= result ((_ to_fp 8 24) #x4AC75656))))
(check-sat)
(exit)
