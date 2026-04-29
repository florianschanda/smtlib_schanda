(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC6846F30)))
;; x should be Float32(0xC6846F30 [Rational(-542451, 32), -16951.593750])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 10473882133.0 5120000.0))))
;; w should be Float32(0x44FFB5C3 [Rational(16758211, 8192), 2045.680054])

(assert (not (distinct x w)))
(check-sat)
(exit)
