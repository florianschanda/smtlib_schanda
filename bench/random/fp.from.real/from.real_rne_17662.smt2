(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01100000 #b00110001100101111110100)))
;; x should be Float32(0xB018CBF4 [Rational(-2503421, 4503599627370496), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 200273696219.0 360287970189639680000.0)))))
;; w should be Float32(0xB018CBF5 [Rational(-10013685, 18014398509481984), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
