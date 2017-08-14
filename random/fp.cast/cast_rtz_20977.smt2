(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10110100 #b01001010101010110110000)))
;; x should be Float32(0xDA2555B0 [Rational(-11634396389965824), -11634396389965824.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC0344AAB600000000000000000000000 [Rational(-11634396389965824), -11634396389965824.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC0344AAB600000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
