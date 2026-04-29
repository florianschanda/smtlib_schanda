(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x24B4D1C3)))
;; x should be Float32(0x24B4D1C3 [Rational(11850179, 151115727451828646838272), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x3FC969A3860000000000000000000000 [Rational(11850179, 151115727451828646838272), 0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x3FC969A3860000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
