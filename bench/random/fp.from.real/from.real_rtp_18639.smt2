(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF3EA01CD)))
;; x should be Float32(0xF3EA01CD [Rational(-37079894686281394681877647851520), -37079894686281394681877647851520.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 926997407390294031836435875149109.0 25.0)))))
;; w should be Float32(0xF3EA01CD [Rational(-37079894686281394681877647851520), -37079894686281394681877647851520.000000])

(assert (not (= x w)))
(check-sat)
(exit)
