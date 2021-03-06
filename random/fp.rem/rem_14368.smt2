(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x2C964473)))
;; y should be Float32(0x2C964473 [Rational(9847923, 2305843009213693952), 0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
