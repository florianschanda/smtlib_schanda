(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC98FB90C)))
;; x should be Float32(0xC98FB90C [Rational(-2354755, 2), -1177377.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 94190197.0 80.0)))))
;; w should be Float32(0xC98FB90C [Rational(-2354755, 2), -1177377.500000])

(assert (= x w))
(check-sat)
(exit)
