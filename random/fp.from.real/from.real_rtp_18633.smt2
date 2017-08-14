(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010110 #b10010100110011100000011)))
;; x should be Float32(0xCB4A6703 [Rational(-13264643), -13264643.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 331616097.0 25.0)))))
;; w should be Float32(0xCB4A6703 [Rational(-13264643), -13264643.000000])

(assert (not (= x w)))
(check-sat)
(exit)
