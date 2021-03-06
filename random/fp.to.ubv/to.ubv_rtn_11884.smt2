(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF36AC1)))
;; x should be Float32(0x4AF36AC1 [Rational(15952577, 2), 7976288.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 7976288

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011110011011010101100000))
;; z should be 7976288

(assert (not (= y z)))
(check-sat)
(exit)
