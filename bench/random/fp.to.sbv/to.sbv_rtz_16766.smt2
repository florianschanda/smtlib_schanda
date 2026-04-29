(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11011100100110010001000)))
;; x should be Float32(0xCAEE4C88 [Rational(-7808580), -7808580.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -7808580

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100010001101100110111100))
;; z should be -7808580

(assert (not (= y z)))
(check-sat)
(exit)
