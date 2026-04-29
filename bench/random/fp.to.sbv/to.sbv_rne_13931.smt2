(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -sbv_8_bound)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC2FF0000)))
;; x should be Float32(0xC2FF0000 [Rational(-255, 2), -127.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -128

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111111111111110000000))
;; z should be -128

(assert (= y z))
(check-sat)
(exit)
