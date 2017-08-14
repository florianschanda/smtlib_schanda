(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00010110001001111001111)))
;; x should be Float32(0x4A8B13CF [Rational(9114575, 2), 4557287.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x41516279E0000000 [Rational(9114575, 2), 4557287.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x41516279E0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
