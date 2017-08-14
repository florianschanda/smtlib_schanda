(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10100000100110100001100)))
;; x should be Float32(0xC9D04D0C [Rational(-3412803, 2), -1706401.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -1706401

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111001011111011001011111))
;; z should be -1706401

(assert (not (= y z)))
(check-sat)
(exit)
