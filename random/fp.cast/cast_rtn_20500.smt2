(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+0) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(+zero)

(declare-const z Float128)
(assert (= z (_ +zero 15 113)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
