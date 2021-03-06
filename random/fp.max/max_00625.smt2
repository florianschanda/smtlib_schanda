(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b11100011001010000110011)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x38CBB7BC)))
;; y should be Float32(0x38CBB7BC [Rational(3337711, 34359738368), 0.000097])

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (not (= result ((_ to_fp 8 24) #x38CBB7BC))))
(check-sat)
(exit)
