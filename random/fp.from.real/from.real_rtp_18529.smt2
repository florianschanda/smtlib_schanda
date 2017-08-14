(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01000101011010001100110)))
;; x should be Float32(0xCA22B466 [Rational(-5331507, 2), -2665753.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 21326029.0 8.0)))))
;; w should be Float32(0xCA22B466 [Rational(-5331507, 2), -2665753.500000])

(assert (= x w))
(check-sat)
(exit)
