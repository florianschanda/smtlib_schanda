(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC649B319)))
;; x should be Float32(0xC649B319 [Rational(-13218585, 1024), -12908.774414])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b00010101011001100010011)))
;; y should be Float32(0x4A8AB313 [Rational(9089811, 2), 4544905.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010010 #b01110111001000000101101)))
;; z should be Float32(0xC93B902D [Rational(-12292141, 16), -768258.812500])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b10100010 #b10110101001000000000001)))
(check-sat)
(exit)
