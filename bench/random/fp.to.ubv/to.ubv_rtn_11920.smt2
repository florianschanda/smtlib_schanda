(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A8AA143)))
;; x should be Float32(0x4A8AA143 [Rational(9085251, 2), 4542625.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 4542625

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010001010101000010100001))
;; z should be 4542625

(assert (= y z))
(check-sat)
(exit)
