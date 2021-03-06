(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10111101001100011110001)))
;; x should be Float32(0x4ADE98F1 [Rational(14588145, 2), 7294072.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F800000)))
;; y should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (= result (fp #b1 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
