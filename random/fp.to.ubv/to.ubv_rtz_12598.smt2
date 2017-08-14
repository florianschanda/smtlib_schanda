(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11011010001101100100011)))
;; x should be Float32(0x4AED1B23 [Rational(15538979, 2), 7769489.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 7769489

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011101101000110110010001))
;; z should be 7769489

(assert (not (= y z)))
(check-sat)
(exit)
