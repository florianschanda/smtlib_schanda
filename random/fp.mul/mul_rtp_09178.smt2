(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A7E75E6)))
;; x should be Float32(0x4A7E75E6 [Rational(8338163, 2), 4169081.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC9DDC96C)))
;; y should be Float32(0xC9DDC96C [Rational(-3633755, 2), -1816877.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (= result (fp #b1 #b10101001 #b10111000111001111111101)))
(check-sat)
(exit)
