(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01010101010101001000100)))
;; x should be Float32(0x49AAAA44 [Rational(2796177, 2), 1398088.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 1398089

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000101010101010101001001))
;; z should be 1398089

(assert (= y z))
(check-sat)
(exit)
