(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A314904)))
;; x should be Float32(0x4A314904 [Rational(2904641), 2904641.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 2904641

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001011000101001001000001))
;; z should be 2904641

(assert (not (= y z)))
(check-sat)
(exit)
