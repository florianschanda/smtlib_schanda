(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00000000101000111110011)))
;; x should be Float32(0xCA8051F3 [Rational(-8409587, 2), -4204793.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -4204793

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101111111101011100000111))
;; z should be -4204793

(assert (not (= y z)))
(check-sat)
(exit)
