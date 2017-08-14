(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10011010101000110110100)))
;; x should be Float32(0x804D51B4 [Rational(-1266797, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBF803546D00000000000000000000000 [Rational(-1266797, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110000000 #b0011010101000110110100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
