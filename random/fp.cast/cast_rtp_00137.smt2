(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b01110110 #b10011000001011101001110)))
;; x should be Float32(0x3B4C174E [Rational(6687655, 2147483648), 0.003114])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x3F6982E9C0000000 [Rational(6687655, 2147483648), 0.003114])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x3F6982E9C0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
