(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10110111111010001001110)))
;; x should be Float32(0x4A5BF44E [Rational(7207463, 2), 3603731.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 3301640121.0 1024.0)))))
;; w should be Float32(0xCA44CB08 [Rational(-3224258), -3224258.000000])

(assert (distinct x w))
(check-sat)
(exit)
