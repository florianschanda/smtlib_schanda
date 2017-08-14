(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10001111 #b00100010001010110000000)))
;; x should be Float32(0xC7911580 [Rational(-74283), -74283.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -74283

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111101101110111010101))
;; z should be -74283

(assert (not (= y z)))
(check-sat)
(exit)
