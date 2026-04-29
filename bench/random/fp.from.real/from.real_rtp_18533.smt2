(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01000101011010001100110)))
;; x should be Float32(0xCA22B466 [Rational(-5331507, 2), -2665753.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 5780785.0 4.0)))))
;; w should be Float32(0xC9B06A62 [Rational(-5780785, 4), -1445196.250000])

(assert (distinct x w))
(check-sat)
(exit)
