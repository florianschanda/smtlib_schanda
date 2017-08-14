(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b11011001 #b01000010001100111100000)))
;; x should be Float32(0x6CA119E0 [Rational(1558073985525596393580789760), 1558073985525596393580789760.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x4594233C00000000 [Rational(1558073985525596393580789760), 1558073985525596393580789760.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x4594233C00000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
