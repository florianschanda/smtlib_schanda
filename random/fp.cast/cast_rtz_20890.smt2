(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004E331D)))
;; x should be Float32(0x004E331D [Rational(5124893, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x3F8038CC740000000000000000000000 [Rational(5124893, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111110000000 #b0011100011001100011101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
