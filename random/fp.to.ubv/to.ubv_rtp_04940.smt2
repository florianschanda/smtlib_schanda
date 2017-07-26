(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -sbv_8_bound)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC3000000)))
;; x should be Float32(0xC3000000 [Rational(-128), -128.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= y z))
(check-sat)
(exit)
