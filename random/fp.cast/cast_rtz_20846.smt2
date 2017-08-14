(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b11001110 #b01011101000001101111001)))
;; x should be Float32(0x672E8379 [Rational(824117010461852807725056), 824117010461852807725056.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(0x7BFF [Rational(65504), 65504.000000])

(declare-const z Float16)
(assert (= z (fp #b0 #b11110 #b1111111111)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
