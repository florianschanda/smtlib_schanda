(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(nan) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F907694)))
;; x should be Float32(NaN)

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(NaN)

(declare-const z Float128)
(assert (= z (_ NaN 15 113)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
