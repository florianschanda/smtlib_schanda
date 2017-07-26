(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9BA91DC)))
;; x should be Float32(0xC9BA91DC [Rational(-3056759, 2), -1528379.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -1528380

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111010001010110111000100))
;; z should be -1528380

(assert (not (= y z)))
(check-sat)
(exit)
