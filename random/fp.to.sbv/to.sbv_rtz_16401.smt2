(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001111 #b01010001111001010000000)))
;; x should be Float32(0x47A8F280 [Rational(86501), 86501.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 86501

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000010101000111100101))
;; z should be 86501

(assert (not (= y z)))
(check-sat)
(exit)
