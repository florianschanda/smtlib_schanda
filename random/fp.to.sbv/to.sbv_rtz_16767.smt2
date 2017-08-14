(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAEE4C8A)))
;; x should be Float32(0xCAEE4C8A [Rational(-7808581), -7808581.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -7808581

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100010001101100110111011))
;; z should be -7808581

(assert (not (= y z)))
(check-sat)
(exit)
