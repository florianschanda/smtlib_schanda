(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC55E0800)))
;; x should be Float32(0xC55E0800 [Rational(-7105, 2), -3552.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b00101111000010101111101)))
;; y should be Float32(0xCA97857D [Rational(-9930109, 2), -4965054.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00000000000000000000000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
