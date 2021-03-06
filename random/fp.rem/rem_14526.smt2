(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5D120C44)))
;; x should be Float32(0x5D120C44 [Rational(657741324753043456), 657741324753043456.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result (fp #b0 #b10111010 #b00100100000110001000100)))
(check-sat)
(exit)
