(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCED0FF80)))
;; x should be Float32(0xCED0FF80 [Rational(-1753202688), -1753202688.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -1753202688

(declare-const z (_ BitVec 32))
(assert (= z #b10010111100000000100000000000000))
;; z should be -1753202688

(assert (not (= y z)))
(check-sat)
(exit)
