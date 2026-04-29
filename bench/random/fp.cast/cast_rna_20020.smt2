(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x23B22F6E)))
;; x should be Float32(0x23B22F6E [Rational(5838775, 302231454903657293676544), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x3FC7645EDC0000000000000000000000 [Rational(5838775, 302231454903657293676544), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111111000111 #b0110010001011110110111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
