(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x000CFA1B)))
;; x should be Float32(0x000CFA1B [Rational(850459, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x37D9F43600000000 [Rational(850459, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01101111101 #b1001111101000011011000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
