(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11001000010111000010000)))
;; x should be Float32(0x00642E10 [Rational(410337, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF7FFFFF)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F800000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)
