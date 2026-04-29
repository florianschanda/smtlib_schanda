(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b00010111 #b10101100001010100110110)))
;; x should be Float32(0x8BD61536 [Rational(-7015067, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0x8001 [Rational(-1, 16777216), -0.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x8001)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
