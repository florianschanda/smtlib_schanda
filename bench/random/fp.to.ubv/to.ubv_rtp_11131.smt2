(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A7F4C92)))
;; x should be Float32(0x4A7F4C92 [Rational(8365641, 2), 4182820.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 4182821

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001111111101001100100101))
;; z should be 4182821

(assert (= y z))
(check-sat)
(exit)
