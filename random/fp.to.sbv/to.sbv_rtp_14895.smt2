(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11000011010001111111100)))
;; x should be Float32(0x4AE1A3FC [Rational(7393790), 7393790.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 7393790

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011100001101000111111110))
;; z should be 7393790

(assert (= y z))
(check-sat)
(exit)
