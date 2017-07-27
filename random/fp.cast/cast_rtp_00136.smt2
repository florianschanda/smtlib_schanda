(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b01110110 #b10011000001011101001110)))
;; x should be Float32(0x3B4C174E [Rational(6687655, 2147483648), 0.003114])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0x1A61 [Rational(1633, 524288), 0.003115])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x1A61)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
