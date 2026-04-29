(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b00100011011011001010100)))
;; x should be Float32(0xC991B654 [Rational(-2387349, 2), -1193674.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 119367459.0 100.0)))))
;; w should be Float32(0xC991B654 [Rational(-2387349, 2), -1193674.500000])

(assert (= x w))
(check-sat)
(exit)
