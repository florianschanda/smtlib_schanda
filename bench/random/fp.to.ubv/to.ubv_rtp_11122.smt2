(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01000111010010000100011)))
;; x should be Float32(0x4AA3A423 [Rational(10724387, 2), 5362193.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 5362194

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010100011101001000010010))
;; z should be 5362194

(assert (= y z))
(check-sat)
(exit)
