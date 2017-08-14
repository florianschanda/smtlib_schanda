(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b10000011 #b00010110111001011010111)))
;; x should be Float32(0x418B72D7 [Rational(9138903, 524288), 17.431074])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0x4C5B [Rational(1115, 64), 17.421875])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x4C5B)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
