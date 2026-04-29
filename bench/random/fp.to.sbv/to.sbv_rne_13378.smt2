(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A0DDD42)))
;; x should be Float32(0x4A0DDD42 [Rational(4648609, 2), 2324304.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 2324304

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001000110111011101010000))
;; z should be 2324304

(assert (= y z))
(check-sat)
(exit)
