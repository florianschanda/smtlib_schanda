(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b00001011 #b00111101110000101010000)))
;; x should be Float32(0x059EE150 [Rational(650773, 43556142965880123323311949751266331066368), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(+zero)

(declare-const z Float16)
(assert (= z (_ +zero 5 11)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
