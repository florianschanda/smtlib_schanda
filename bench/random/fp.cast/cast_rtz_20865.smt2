(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6D1D30F2)))
;; x should be Float32(0x6D1D30F2 [Rational(3040519862123845777769889792), 3040519862123845777769889792.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x45A3A61E40000000 [Rational(3040519862123845777769889792), 3040519862123845777769889792.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10001011010 #b0011101001100001111001000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
