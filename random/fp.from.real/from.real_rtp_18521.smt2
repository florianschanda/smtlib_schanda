(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01010000110011000001100)))
;; x should be Float32(0xC9A8660C [Rational(-2759043, 2), -1379521.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 19464489.0 16.0)))))
;; w should be Float32(0xC9948094 [Rational(-2433061, 2), -1216530.500000])

(assert (distinct x w))
(check-sat)
(exit)
