(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA6B7F22)))
;; x should be Float32(0xCA6B7F22 [Rational(-7716753, 2), -3858376.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 794923.0 8.0))))
;; w should be Float32(0x47C212B0 [Rational(794923, 8), 99365.375000])

(assert (not (distinct x w)))
(check-sat)
(exit)
