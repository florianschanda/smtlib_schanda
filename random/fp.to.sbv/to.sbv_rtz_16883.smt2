(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD453FCAD)))
;; x should be Float32(0xD453FCAD [Rational(-3641909182464), -3641909182464.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -3641909182464

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111001011000000001101010011000000000000000000))
;; z should be -3641909182464

(assert (not (= y z)))
(check-sat)
(exit)
