(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100101000010110011101)))
;; x should be Float32(0xCA92859D [Rational(-9602461, 2), -4801230.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -4801230

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101101101011110100110010))
;; z should be -4801230

(assert (not (= y z)))
(check-sat)
(exit)
