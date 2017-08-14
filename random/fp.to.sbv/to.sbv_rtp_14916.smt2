(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AEE5AF6)))
;; x should be Float32(0x4AEE5AF6 [Rational(7810427), 7810427.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 7810427

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011101110010110101111011))
;; z should be 7810427

(assert (= y z))
(check-sat)
(exit)
