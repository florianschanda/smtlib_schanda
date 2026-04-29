(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9261AD8)))
;; x should be Float32(0xC9261AD8 [Rational(-1360731, 2), -680365.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xC0124C35B00000000000000000000000 [Rational(-1360731, 2), -680365.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC0124C35B00000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
