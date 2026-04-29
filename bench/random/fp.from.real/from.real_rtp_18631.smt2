(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b01010000 #b01101001011101110100000)))
;; x should be Float32(0xA834BBA0 [Rational(-370141, 36893488147419103232), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 76213349.0 23058430092136939520000.0)))))
;; w should be Float32(0xA76E2AAD [Rational(-15608493, 4722366482869645213696), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
