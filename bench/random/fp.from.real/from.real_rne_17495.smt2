(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAAAC01B)))
;; x should be Float32(0xCAAAC01B [Rational(-11190299, 2), -5595149.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 2238059893.0 400.0)))))
;; w should be Float32(0xCAAAC01B [Rational(-11190299, 2), -5595149.500000])

(assert (not (= x w)))
(check-sat)
(exit)
