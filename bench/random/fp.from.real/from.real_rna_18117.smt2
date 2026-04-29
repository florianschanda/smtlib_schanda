(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA9158119)))
;; x should be Float32(0xA9158119 [Rational(-9797913, 295147905179352825856), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 79055886863.0 5902958103587056517120000.0)))))
;; w should be Float32(0xA8714269 [Rational(-15811177, 1180591620717411303424), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
