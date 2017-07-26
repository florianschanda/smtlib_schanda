(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01000010100011010000100)))
;; x should be Float32(0xC9A14684 [Rational(-2642337, 2), -1321168.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -1321168

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111010111101011100110000))
;; z should be -1321168

(assert (not (= y z)))
(check-sat)
(exit)
