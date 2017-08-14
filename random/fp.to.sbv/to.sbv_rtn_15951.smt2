(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD19BFA)))
;; x should be Float32(0xCAD19BFA [Rational(-6868477), -6868477.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -6868477

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100101110011001000000011))
;; z should be -6868477

(assert (not (= y z)))
(check-sat)
(exit)
