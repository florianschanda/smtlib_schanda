(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA30671E)))
;; x should be Float32(0xCA30671E [Rational(-5780367, 2), -2890183.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -2890183

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110100111110011000111001))
;; z should be -2890183

(assert (= y z))
(check-sat)
(exit)
