(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x498E2D14)))
;; x should be Float32(0x498E2D14 [Rational(2329413, 2), 1164706.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x40131C5A280000000000000000000000 [Rational(2329413, 2), 1164706.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x40131C5A280000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
