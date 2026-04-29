(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11110011101010111000010)))
;; x should be Float32(0xCA79D5C2 [Rational(-8186593, 2), -4093296.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 64957305.0 16.0)))))
;; w should be Float32(0xCA77CADE [Rational(-8119663, 2), -4059831.500000])

(assert (distinct x w))
(check-sat)
(exit)
