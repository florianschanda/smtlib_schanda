(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA3E16288)))
;; x should be Float32(0xA3E16288 [Rational(-1846353, 75557863725914323419136), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 13950649580550304080286240224833.0 570899077082383952423314387779798054553098649600.0)))))
;; w should be Float32(0xA3E16288 [Rational(-1846353, 75557863725914323419136), -0.000000])

(assert (= x w))
(check-sat)
(exit)
