(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA2ACEDE)))
;; x should be Float32(0xCA2ACEDE [Rational(-5597039, 2), -2798519.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00022517)))
;; y should be Float32(0x00022517 [Rational(140567, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b11111110 #b11111111111111111111110)))
(check-sat)
(exit)
