(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01010010 #b00101011000000100011001)))
;; x should be Float32(0xA9158119 [Rational(-9797913, 295147905179352825856), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 195958276629.0 5902958103587056517120000.0)))))
;; w should be Float32(0xA915811A [Rational(-4898957, 147573952589676412928), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
