(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA92B89D)))
;; x should be Float32(0xCA92B89D [Rational(-9615517, 2), -4807758.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b01001011111101011111110)))
;; y should be Float32(0x4A25FAFE [Rational(5438847, 2), 2719423.500000])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (= result (fp #b1 #b10010011 #b11111101110110001111000)))
(check-sat)
(exit)
