(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b11101101 #b10101001111010110011001)))
;; x should be Float32(0xF6D4F599 [Rational(-2159664543498325779191375215984640), -2159664543498325779191375215984640.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 53991614390181593716289447166895509.0 25.0)))))
;; w should be Float32(0xF6D4F599 [Rational(-2159664543498325779191375215984640), -2159664543498325779191375215984640.000000])

(assert (= x w))
(check-sat)
(exit)
