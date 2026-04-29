(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC98F3674)))
;; x should be Float32(0xC98F3674 [Rational(-2346397, 2), -1173198.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -1173199

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111011100001100100110001))
;; z should be -1173199

(assert (= y z))
(check-sat)
(exit)
