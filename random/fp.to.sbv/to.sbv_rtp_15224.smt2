(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b11010001110000000010000)))
;; x should be Float32(0xC9E8E010 [Rational(-1907714), -1907714.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -1907714

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111000101110001111111110))
;; z should be -1907714

(assert (= y z))
(check-sat)
(exit)
