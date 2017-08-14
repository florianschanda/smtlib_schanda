(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10011100011001100011101)))
;; x should be Float32(0x004E331D [Rational(5124893, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x38038CC740000000 [Rational(5124893, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x38038CC740000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
