(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+halfpoint) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF6685F)))
;; x should be Float32(0x4AF6685F [Rational(16148575, 2), 8074287.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(+oo)

(declare-const z Float16)
(assert (= z (_ +oo 5 11)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
