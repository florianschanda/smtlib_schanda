(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b00111111 #b11010010110000110010110)))
;; y should be Float32(0x1FE96196 [Rational(7647435, 77371252455336267181195264), 0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (= result (fp #b1 #b00111111 #b11010010110000110010110)))
(check-sat)
(exit)
