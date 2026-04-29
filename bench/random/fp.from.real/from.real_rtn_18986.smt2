(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA74005E)))
;; x should be Float32(0xCA74005E [Rational(-7995439, 2), -3997719.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 31981759.0 8.0)))))
;; w should be Float32(0xCA740060 [Rational(-3997720), -3997720.000000])

(assert (distinct x w))
(check-sat)
(exit)
