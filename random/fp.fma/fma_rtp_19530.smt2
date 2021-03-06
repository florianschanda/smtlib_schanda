(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9FAAA2B)))
;; x should be Float32(0xC9FAAA2B [Rational(-16427563, 8), -2053445.375000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10110011010000001001011)))
;; y should be Float32(0x4AD9A04B [Rational(14262347, 2), 7131173.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10111100 #b00110010010001111110011)))
;; z should be Float32(0xDE1923F3 [Rational(-2758732673328349184), -2758732673328349184.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b10111100 #b00110010010010000101000)))
(check-sat)
(exit)
