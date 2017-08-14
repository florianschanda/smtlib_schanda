(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00063253)))
;; x should be Float32(0x00063253 [Rational(406099, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x3F7C8C94C00000000000000000000000 [Rational(406099, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111101111100 #b1000110010010100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
