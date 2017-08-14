(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49CE806C)))
;; x should be Float32(0x49CE806C [Rational(3383323, 2), 1691661.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x40139D00D80000000000000000000000 [Rational(3383323, 2), 1691661.500000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000010011 #b1001110100000000110110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
