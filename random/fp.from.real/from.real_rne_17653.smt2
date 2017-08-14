(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBFA043B9)))
;; x should be Float32(0xBFA043B9 [Rational(-10503097, 8388608), -1.252067])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 881063674838609.0 703687441776640.0)))))
;; w should be Float32(0xBFA043B9 [Rational(-10503097, 8388608), -1.252067])

(assert (= x w))
(check-sat)
(exit)
