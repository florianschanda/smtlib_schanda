(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100100111110100011011)))
;; x should be Float32(0xCAB27D1B [Rational(-11697435, 2), -5848717.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 58487177.0 10.0)))))
;; w should be Float32(0xCAB27D1B [Rational(-11697435, 2), -5848717.500000])

(assert (= x w))
(check-sat)
(exit)
