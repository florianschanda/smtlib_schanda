(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11110100011101100001101)))
;; x should be Float32(0x4AFA3B0D [Rational(16399117, 2), 8199558.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 14428983.0 16.0)))))
;; w should be Float32(0xC95C2B37 [Rational(-14428983, 16), -901811.437500])

(assert (distinct x w))
(check-sat)
(exit)
