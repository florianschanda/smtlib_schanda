(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b01101100 #b01111101010100111111111)))
;; x should be Float32(0xB63EA9FF [Rational(-12495359, 4398046511104), -0.000003])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xBFEC7D53FE0000000000000000000000 [Rational(-12495359, 4398046511104), -0.000003])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111111101100 #b0111110101010011111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
