(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9A14688)))
;; x should be Float32(0xC9A14688 [Rational(-1321169), -1321169.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -1321169

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111010111101011100101111))
;; z should be -1321169

(assert (not (= y z)))
(check-sat)
(exit)
