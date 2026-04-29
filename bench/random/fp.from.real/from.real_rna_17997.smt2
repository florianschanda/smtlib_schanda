(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10101110110011101110110)))
;; x should be Float32(0xCA576776 [Rational(-7058363, 2), -3529181.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 2823345257.0 800.0)))))
;; w should be Float32(0xCA576776 [Rational(-7058363, 2), -3529181.500000])

(assert (= x w))
(check-sat)
(exit)
