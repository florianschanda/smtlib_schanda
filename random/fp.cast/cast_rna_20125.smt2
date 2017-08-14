(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b10011010010001110101001)))
;; x should be Float32(0x80CD23A9 [Rational(-13444009, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xBF819A47520000000000000000000000 [Rational(-13444009, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBF819A47520000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
