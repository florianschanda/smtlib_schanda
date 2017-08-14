(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x005E48EA)))
;; x should be Float32(0x005E48EA [Rational(3089525, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x3F807923A80000000000000000000000 [Rational(3089525, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x3F807923A80000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
