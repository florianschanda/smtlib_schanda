(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b11011001 #b01000010001100111100000)))
;; x should be Float32(0x6CA119E0 [Rational(1558073985525596393580789760), 1558073985525596393580789760.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(+oo)

(declare-const z Float16)
(assert (= z (fp #b0 #b11111 #b0000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
