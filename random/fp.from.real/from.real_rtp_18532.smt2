(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA22B466)))
;; x should be Float32(0xCA22B466 [Rational(-5331507, 2), -2665753.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 170608243.0 64.0)))))
;; w should be Float32(0xCA22B467 [Rational(-10663015, 4), -2665753.750000])

(assert (distinct x w))
(check-sat)
(exit)
