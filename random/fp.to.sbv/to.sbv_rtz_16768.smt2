(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAEE4C89)))
;; x should be Float32(0xCAEE4C89 [Rational(-15617161, 2), -7808580.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -7808580

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100010001101100110111100))
;; z should be -7808580

(assert (not (= y z)))
(check-sat)
(exit)
