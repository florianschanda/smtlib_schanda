(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10011010101111100110010)))
;; x should be Float32(0x004D5F32 [Rational(2535321, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x3F80357CC80000000000000000000000 [Rational(2535321, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x3F80357CC80000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
