(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11100111000011110110101)))
;; x should be Float32(0x4AF387B5 [Rational(15959989, 2), 7979994.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 7979995

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011110011100001111011011))
;; z should be 7979995

(assert (not (= y z)))
(check-sat)
(exit)
