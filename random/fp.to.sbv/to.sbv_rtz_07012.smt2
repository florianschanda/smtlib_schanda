(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A7BC504)))
;; x should be Float32(0x4A7BC504 [Rational(4124993), 4124993.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 4124993

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001111101111000101000001))
;; z should be 4124993

(assert (not (= y z)))
(check-sat)
(exit)
