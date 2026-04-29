(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAAAC01B)))
;; x should be Float32(0xCAAAC01B [Rational(-11190299, 2), -5595149.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 843647897.0 256.0)))))
;; w should be Float32(0xCA49242E [Rational(-6590999, 2), -3295499.500000])

(assert (not (distinct x w)))
(check-sat)
(exit)
