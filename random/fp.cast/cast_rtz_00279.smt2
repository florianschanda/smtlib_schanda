(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00101110 #b01101011101010110110011)))
;; x should be Float32(0x9735D5B3 [Rational(-11916723, 20282409603651670423947251286016), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xBFAE6BAB660000000000000000000000 [Rational(-11916723, 20282409603651670423947251286016), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110101110 #b0110101110101011011001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
