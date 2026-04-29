(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00011101 #b11011010010011110110111)))
;; x should be Float32(0x0EED27B7 [Rational(15542199, 2658455991569831745807614120560689152), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 76350460963.0 13292279957849158729038070602803445760000.0)))))
;; w should be Float32(0x8EE900CC [Rational(-3817523, 664613997892457936451903530140172288), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
