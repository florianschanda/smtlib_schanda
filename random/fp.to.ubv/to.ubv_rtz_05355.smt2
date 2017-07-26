(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AC8F8CA)))
;; x should be Float32(0x4AC8F8CA [Rational(6585445), 6585445.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 6585445

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011001000111110001100101))
;; z should be 6585445

(assert (not (= y z)))
(check-sat)
(exit)
