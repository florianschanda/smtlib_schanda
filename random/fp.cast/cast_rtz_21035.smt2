(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(nan) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b10001101000100000100000)))
;; x should be Float32(NaN)

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(NaN)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #xFFFF)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
