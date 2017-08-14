(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x802F9B5E)))
;; x should be Float32(0x802F9B5E [Rational(-1559983, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xB7F7CDAF00000000 [Rational(-1559983, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01101111111 #b0111110011011010111100000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
