(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +ubv_8_bound)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x437E8000)))
;; x should be Float32(0x437E8000 [Rational(509, 2), 254.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 255

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000011111111))
;; z should be 255

(assert (= y z))
(check-sat)
(exit)
