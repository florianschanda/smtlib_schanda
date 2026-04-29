(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b01010101 #b01000010011000000001010)))
;; x should be Float32(0x2AA1300A [Rational(5281797, 18446744073709551616), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x3FD54260140000000000000000000000 [Rational(5281797, 18446744073709551616), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111111010101 #b0100001001100000000101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
