(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004D5F32)))
;; x should be Float32(0x004D5F32 [Rational(2535321, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x380357CC80000000 [Rational(2535321, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x380357CC80000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
