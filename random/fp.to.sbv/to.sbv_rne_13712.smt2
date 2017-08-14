(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAAA6F1A)))
;; x should be Float32(0xCAAA6F1A [Rational(-5584781), -5584781.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -5584781

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101010101100100001110011))
;; z should be -5584781

(assert (= y z))
(check-sat)
(exit)
