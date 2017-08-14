(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11011100101101011111000)))
;; x should be Float32(0x4AEE5AF8 [Rational(7810428), 7810428.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 7810428

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011101110010110101111100))
;; z should be 7810428

(assert (= y z))
(check-sat)
(exit)
