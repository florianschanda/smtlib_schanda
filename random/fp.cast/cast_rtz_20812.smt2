(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00010110001001111001111)))
;; x should be Float32(0x4A8B13CF [Rational(9114575, 2), 4557287.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x401516279E0000000000000000000000 [Rational(9114575, 2), 4557287.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x401516279E0000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
