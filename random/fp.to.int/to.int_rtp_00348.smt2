(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11000011011001111011001)))
;; x should be Float32(0x4AE1B3D9 [Rational(14791641, 2), 7395820.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 7395821

(declare-const z Int)
(assert (= z 7395821))
(assert (not (= y z)))
