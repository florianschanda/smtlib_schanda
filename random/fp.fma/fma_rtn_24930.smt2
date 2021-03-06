(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4AD33A75)))
;; y should be Float32(0x4AD33A75 [Rational(13843061, 2), 6921530.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010100 #b10011011100111000001110)))
;; z should be Float32(0x4A4DCE0E [Rational(6743815, 2), 3371907.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
