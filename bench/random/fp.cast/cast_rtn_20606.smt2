(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+subnormal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0065F21C)))
;; x should be Float32(0x0065F21C [Rational(1670279, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(+zero)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x0000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
