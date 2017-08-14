(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD19BF9)))
;; x should be Float32(0xCAD19BF9 [Rational(-13736953, 2), -6868476.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -6868477

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100101110011001000000011))
;; z should be -6868477

(assert (not (= y z)))
(check-sat)
(exit)
