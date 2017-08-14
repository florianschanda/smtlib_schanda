(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b01100011 #b10001101111110110010011)))
;; x should be Float32(0xB1C6FD93 [Rational(-13041043, 2251799813685248), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 183536375153512446622007.0 31691265005705735037417580134400.0)))))
;; w should be Float32(0xB1C6FD93 [Rational(-13041043, 2251799813685248), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
