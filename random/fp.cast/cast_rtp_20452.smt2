(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01000101011010010001101)))
;; x should be Float32(0x8022B48D [Rational(-2274445, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xBF7F15A4680000000000000000000000 [Rational(-2274445, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBF7F15A4680000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
