(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9CFC9B8)))
;; x should be Float32(0xC9CFC9B8 [Rational(-1702199), -1702199.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -1702199

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111001100000011011001001))
;; z should be -1702199

(assert (= y z))
(check-sat)
(exit)
