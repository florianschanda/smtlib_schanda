(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10000010101001000000001)))
;; x should be Float32(0xCAC15201 [Rational(-12669441, 2), -6334720.500000])

(declare-const y Float32)
(assert (= y (_ -oo 8 24)))
;; y should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result (_ +zero 8 24))))
(check-sat)
(exit)
