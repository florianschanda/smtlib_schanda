(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00712C68)))
;; x should be Float32(0x00712C68 [Rational(927117, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x3F80C4B1A00000000000000000000000 [Rational(927117, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111110000000 #b1100010010110001101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
