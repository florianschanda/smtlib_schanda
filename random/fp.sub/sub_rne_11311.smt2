(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2AE4248F)))
;; x should be Float32(0x2AE4248F [Rational(14951567, 36893488147419103232), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (not (= result (fp #b0 #b01010101 #b11001000010010010001111))))
(check-sat)
(exit)
