(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9D04D0C)))
;; x should be Float32(0xC9D04D0C [Rational(-3412803, 2), -1706401.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -1706401

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111001011111011001011111))
;; z should be -1706401

(assert (not (= y z)))
(check-sat)
(exit)
