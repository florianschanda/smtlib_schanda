(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01000111011010011000010)))
;; x should be Float32(0xCA23B4C2 [Rational(-5364321, 2), -2682160.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xC0144769840000000000000000000000 [Rational(-5364321, 2), -2682160.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010100 #b0100011101101001100001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
