(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAC3C849)))
;; x should be Float32(0xCAC3C849 [Rational(-12830793, 2), -6415396.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 320769831.0 50.0)))))
;; w should be Float32(0xCAC3C849 [Rational(-12830793, 2), -6415396.500000])

(assert (= x w))
(check-sat)
(exit)
