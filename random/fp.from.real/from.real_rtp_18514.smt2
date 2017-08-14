(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA22492E)))
;; x should be Float32(0xCA22492E [Rational(-5317783, 2), -2658891.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 340338165.0 128.0)))))
;; w should be Float32(0xCA22492F [Rational(-10635567, 4), -2658891.750000])

(assert (distinct x w))
(check-sat)
(exit)
