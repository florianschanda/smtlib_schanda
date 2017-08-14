(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xE31FFDE3)))
;; x should be Float32(0xE31FFDE3 [Rational(-2951326773831127793664), -2951326773831127793664.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(0xFBFF [Rational(-65504), -65504.000000])

(declare-const z Float16)
(assert (= z (fp #b1 #b11110 #b1111111111)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
