(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6D1D30F2)))
;; x should be Float32(0x6D1D30F2 [Rational(3040519862123845777769889792), 3040519862123845777769889792.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x405A3A61E40000000000000000000000 [Rational(3040519862123845777769889792), 3040519862123845777769889792.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x405A3A61E40000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
