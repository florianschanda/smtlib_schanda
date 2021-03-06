(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA619D96B)))
;; x should be Float32(0xA619D96B [Rational(-10082667, 18889465931478580854784), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01010110 #b01111000000110011101111)))
;; y should be Float32(0x2B3C0CEF [Rational(12324079, 18446744073709551616), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFF7FFFFF)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b11111110 #b11111111111111111111111))))
(check-sat)
(exit)
