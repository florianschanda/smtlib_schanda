(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF7D706)))
;; x should be Float32(0xCAF7D706 [Rational(-8121219), -8121219.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -8121219

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100001000001010001111101))
;; z should be -8121219

(assert (= y z))
(check-sat)
(exit)
