(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0568211F)))
;; x should be Float32(0x0568211F [Rational(15212831, 1393796574908163946345982392040522594123776), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x38AD0423E0000000 [Rational(15212831, 1393796574908163946345982392040522594123776), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01110001010 #b1101000001000010001111100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
