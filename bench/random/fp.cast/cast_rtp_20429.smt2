(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10001101 #b11000100100011001001100)))
;; x should be Float32(0xC6E2464C [Rational(-3707283, 128), -28963.148438])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0xF712 [Rational(-28960), -28960.000000])

(declare-const z Float16)
(assert (= z (fp #b1 #b11101 #b1100010010)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
