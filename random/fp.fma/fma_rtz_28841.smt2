(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b01101000 #b10011011010010111001001)))
;; y should be Float32(0xB44DA5C9 [Rational(-13477321, 70368744177664), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80091557)))
;; z should be Float32(0x80091557 [Rational(-595287, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b11101000 #b10011011010010111001000))))
(check-sat)
(exit)
