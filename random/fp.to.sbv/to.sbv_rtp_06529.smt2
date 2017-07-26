(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA9FA434)))
;; x should be Float32(0xCA9FA434 [Rational(-5231130), -5231130.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -5231130

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101100000010110111100110))
;; z should be -5231130

(assert (= y z))
(check-sat)
(exit)
