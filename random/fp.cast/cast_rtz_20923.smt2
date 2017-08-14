(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100011110000010100001)))
;; x should be Float32(0xCAD1E0A1 [Rational(-13754529, 2), -6877264.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC015A3C1420000000000000000000000 [Rational(-13754529, 2), -6877264.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC015A3C1420000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
