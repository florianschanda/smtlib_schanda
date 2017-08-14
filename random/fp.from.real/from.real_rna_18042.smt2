(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA404462)))
;; x should be Float32(0xCA404462 [Rational(-6300209, 2), -3150104.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 3225707205.0 1024.0)))))
;; w should be Float32(0xCA404463 [Rational(-12600419, 4), -3150104.750000])

(assert (distinct x w))
(check-sat)
(exit)
