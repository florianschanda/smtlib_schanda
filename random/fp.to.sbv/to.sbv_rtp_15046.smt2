(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5930D7F5)))
;; x should be Float32(0x5930D7F5 [Rational(3111065198002176), 3111065198002176.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 3111065198002176

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000001011000011010111111101010000000000000000000000000000))
;; z should be 3111065198002176

(assert (= y z))
(check-sat)
(exit)
