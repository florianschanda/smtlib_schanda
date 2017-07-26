(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A7BC508)))
;; x should be Float32(0x4A7BC508 [Rational(4124994), 4124994.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 4124994

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001111101111000101000010))
;; z should be 4124994

(assert (not (= y z)))
(check-sat)
(exit)
