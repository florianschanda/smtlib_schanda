(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00111111100110100010111)))
;; x should be Float32(0xCA9FCD17 [Rational(-10472727, 2), -5236363.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -5236363

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101100000001100101110101))
;; z should be -5236363

(assert (not (= y z)))
(check-sat)
(exit)
