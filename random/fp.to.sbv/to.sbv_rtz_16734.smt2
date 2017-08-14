(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11110111111000000000110)))
;; x should be Float32(0xCAFBF006 [Rational(-8255491), -8255491.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -8255491

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100000100000011111111101))
;; z should be -8255491

(assert (not (= y z)))
(check-sat)
(exit)
