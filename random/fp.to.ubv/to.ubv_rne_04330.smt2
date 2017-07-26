(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7FFF6CC9)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0010111111011101100011000000000011101000101010001000100000001000))
;; z should be 3449066825166915592

(assert (= y z))
(check-sat)
(exit)
