(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBADA8697)))
;; x should be Float32(0xBADA8697 [Rational(-14321303, 8589934592), -0.001667])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 3075476378551298403.0 1844674407370955161600.0)))))
;; w should be Float32(0xBADA8697 [Rational(-14321303, 8589934592), -0.001667])

(assert (not (= x w)))
(check-sat)
(exit)
