(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b01110010 #b01100100100011111100111)))
;; x should be Float32(0x393247E7 [Rational(11683815, 68719476736), 0.000170])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(0x0992 [Rational(713, 4194304), 0.000170])

(declare-const z Float16)
(assert (= z (fp #b0 #b00010 #b0110010010)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
