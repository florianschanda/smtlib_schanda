(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000100101011010010)))
;; y should be Float32(0x00004AD2 [Rational(9577, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
