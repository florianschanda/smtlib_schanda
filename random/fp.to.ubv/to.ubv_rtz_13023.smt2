(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01101010011110011100100)))
;; x should be Float32(0xCA353CE4 [Rational(-2969401), -2969401.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1111000001100000011110110011011011100001011010100101000100101000))
;; z should be 17320979642507219240

(assert (not (= y z)))
(check-sat)
(exit)
