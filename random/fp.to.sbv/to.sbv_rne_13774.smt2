(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF7D707)))
;; x should be Float32(0xCAF7D707 [Rational(-16242439, 2), -8121219.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -8121220

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100001000001010001111100))
;; z should be -8121220

(assert (= y z))
(check-sat)
(exit)
