(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+subnormal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007D7C5C)))
;; x should be Float32(0x007D7C5C [Rational(2055959, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(+zero)

(declare-const z Float16)
(assert (= z (_ +zero 5 11)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
