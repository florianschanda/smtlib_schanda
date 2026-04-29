(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xAD4C8835)))
;; x should be Float32(0xAD4C8835 [Rational(-13404213, 1152921504606846976), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 386350125537640292285543613.0 33230699894622896822595176507008614400.0)))))
;; w should be Float32(0xAD4C8835 [Rational(-13404213, 1152921504606846976), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
