(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00111111001001011111111)))
;; x should be Float32(0xCA9F92FF [Rational(-10457855, 2), -5228927.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 65403183.0 16.0))))
;; w should be Float32(0x4A797E4C [Rational(4087699), 4087699.000000])

(assert (distinct x w))
(check-sat)
(exit)
