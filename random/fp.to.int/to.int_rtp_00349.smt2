(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01101010000001011001100)))
;; x should be Float32(0x49B502CC [Rational(2965683, 2), 1482841.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 1482842

(declare-const z Int)
(assert (= z 1482842))
(assert (not (= y z)))
