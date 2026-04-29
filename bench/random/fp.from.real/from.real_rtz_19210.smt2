(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11111010101001010011110)))
;; x should be Float32(0x4A7D529E [Rational(8300879, 2), 4150439.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 26753973.0 8.0)))))
;; w should be Float32(0xCA4C1DDA [Rational(-6688493, 2), -3344246.500000])

(assert (distinct x w))
(check-sat)
(exit)
