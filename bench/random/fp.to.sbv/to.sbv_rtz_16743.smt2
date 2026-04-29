(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10100000100110100010000)))
;; x should be Float32(0xC9D04D10 [Rational(-1706402), -1706402.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -1706402

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111001011111011001011110))
;; z should be -1706402

(assert (not (= y z)))
(check-sat)
(exit)
