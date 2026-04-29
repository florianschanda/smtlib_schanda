(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10000000100010001100010)))
;; x should be Float32(0xCA404462 [Rational(-6300209, 2), -3150104.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 5040167271.0 1600.0)))))
;; w should be Float32(0xCA404462 [Rational(-6300209, 2), -3150104.500000])

(assert (= x w))
(check-sat)
(exit)
