(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAACE9BF)))
;; x should be Float32(0xCAACE9BF [Rational(-11332031, 2), -5666015.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b11111110001111011010101)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
