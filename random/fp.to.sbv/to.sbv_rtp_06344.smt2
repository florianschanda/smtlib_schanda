(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b11111100000001011001000)))
;; x should be Float32(0x497E02C8 [Rational(2080857, 2), 1040428.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 1040429

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000011111110000000101101))
;; z should be 1040429

(assert (not (= y z)))
(check-sat)
(exit)
