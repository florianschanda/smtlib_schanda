(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5ECBA42F)))
;; x should be Float32(0x5ECBA42F [Rational(7336952581463212032), 7336952581463212032.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x403D97485E0000000000000000000000 [Rational(7336952581463212032), 7336952581463212032.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000111101 #b1001011101001000010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
