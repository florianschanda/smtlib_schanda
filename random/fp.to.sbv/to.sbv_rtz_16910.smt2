(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -sbv_8_bound)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC2FF0000)))
;; x should be Float32(0xC2FF0000 [Rational(-255, 2), -127.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -127

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111110000001))
;; z should be -127

(assert (not (= y z)))
(check-sat)
(exit)
