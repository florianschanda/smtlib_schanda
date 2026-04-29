(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF6ED9F)))
;; x should be Float32(0x4AF6ED9F [Rational(16182687, 2), 8091343.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0x4015EDDB3E0000000000000000000000 [Rational(16182687, 2), 8091343.500000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000010101 #b1110110111011011001111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
