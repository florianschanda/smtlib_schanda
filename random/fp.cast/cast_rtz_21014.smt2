(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-subnormal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01010001111110100100110)))
;; x should be Float32(0x8028FD26 [Rational(-1343123, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z (_ -zero 5 11)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
