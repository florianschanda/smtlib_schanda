(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b01000111 #b01100100010111101101110)))
;; x should be Float32(0x23B22F6E [Rational(5838775, 302231454903657293676544), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(+zero)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x0000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
