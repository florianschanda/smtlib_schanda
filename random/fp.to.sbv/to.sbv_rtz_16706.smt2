(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA9FCD16)))
;; x should be Float32(0xCA9FCD16 [Rational(-5236363), -5236363.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -5236363

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101100000001100101110101))
;; z should be -5236363

(assert (not (= y z)))
(check-sat)
(exit)
