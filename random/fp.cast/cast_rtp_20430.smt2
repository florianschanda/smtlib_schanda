(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10001101 #b11000100100011001001100)))
;; x should be Float32(0xC6E2464C [Rational(-3707283, 128), -28963.148438])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC0DC48C980000000 [Rational(-3707283, 128), -28963.148438])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000001101 #b1100010010001100100110000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
