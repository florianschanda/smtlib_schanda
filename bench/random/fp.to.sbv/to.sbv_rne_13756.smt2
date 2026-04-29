(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAC820C5)))
;; x should be Float32(0xCAC820C5 [Rational(-13115589, 2), -6557794.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -6557794

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100110111110111110011110))
;; z should be -6557794

(assert (= y z))
(check-sat)
(exit)
