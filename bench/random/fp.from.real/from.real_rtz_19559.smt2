(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b01110000 #b00100011110110011100010)))
;; x should be Float32(0xB811ECE2 [Rational(-4781681, 137438953472), -0.000035])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 16429732305035869131.0 472236648286964521369600.0)))))
;; w should be Float32(0xB811ECE2 [Rational(-4781681, 137438953472), -0.000035])

(assert (= x w))
(check-sat)
(exit)
