(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b00101000001100110110100)))
;; x should be Float32(0x499419B4 [Rational(2426477, 2), 1213238.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 2484712931.0 2048.0))))
;; w should be Float32(0x499419B5 [Rational(9705909, 8), 1213238.625000])

(assert (not (distinct x w)))
(check-sat)
(exit)
