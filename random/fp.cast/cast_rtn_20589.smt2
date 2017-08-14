(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x157CCA88)))
;; x should be Float32(0x157CCA88 [Rational(2070865, 40564819207303340847894502572032), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x3AAF995100000000 [Rational(2070865, 40564819207303340847894502572032), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x3AAF995100000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
