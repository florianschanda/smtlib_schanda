(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00101100 #b10111010001011010000010)))
;; x should be Float32(0x165D1682 [Rational(7244609, 40564819207303340847894502572032), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x3ACBA2D040000000 [Rational(7244609, 40564819207303340847894502572032), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x3ACBA2D040000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
