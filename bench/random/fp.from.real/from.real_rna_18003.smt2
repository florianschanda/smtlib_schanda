(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD16B67)))
;; x should be Float32(0xCAD16B67 [Rational(-13724519, 2), -6862259.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 2744903737.0 400.0)))))
;; w should be Float32(0xCAD16B67 [Rational(-13724519, 2), -6862259.500000])

(assert (= x w))
(check-sat)
(exit)
