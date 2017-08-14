(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11000101101101111010110)))
;; x should be Float32(0x0062DBD6 [Rational(3239403, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0x3F808B6F580000000000000000000000 [Rational(3239403, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111110000000 #b1000101101101111010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
