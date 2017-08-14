(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b01111011 #b01010010001011001110010)))
;; x should be Float32(0xBDA91672 [Rational(-5540665, 67108864), -0.082562])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0xAD49 [Rational(-1353, 16384), -0.082581])

(declare-const z Float16)
(assert (= z (fp #b1 #b01011 #b0101001001)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
