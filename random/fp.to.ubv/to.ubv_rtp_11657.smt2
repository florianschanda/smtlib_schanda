(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFDF6216E)))
;; x should be Float32(0xFDF6216E [Rational(-40895457978059669466228084675683811328), -40895457978059669466228084675683811328.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0111011110111000101111111100010011011110000001100010001000100011))
;; z should be 8626855938487624227

(assert (= y z))
(check-sat)
(exit)
