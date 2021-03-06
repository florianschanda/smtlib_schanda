(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0951D530)))
;; x should be Float32(0x0951D530 [Rational(859475, 340282366920938463463374607431768211456), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11000000 #b00001101110110100000011)))
;; y should be Float32(0x6006ED03 [Rational(38889721876390608896), 38889721876390608896.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result (_ +zero 8 24))))
(check-sat)
(exit)
