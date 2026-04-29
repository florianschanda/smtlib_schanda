(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00010010 #b00101101000111110111101)))
;; x should be Float32(0x89168FBD [Rational(-9867197, 5444517870735015415413993718908291383296), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBF922D1F7A0000000000000000000000 [Rational(-9867197, 5444517870735015415413993718908291383296), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110010010 #b0010110100011111011110100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
