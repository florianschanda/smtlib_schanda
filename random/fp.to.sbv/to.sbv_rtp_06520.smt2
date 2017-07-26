(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01010010100100000100000)))
;; x should be Float32(0xC9A94820 [Rational(-1386756), -1386756.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -1386756

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111010101101011011111100))
;; z should be -1386756

(assert (= y z))
(check-sat)
(exit)
