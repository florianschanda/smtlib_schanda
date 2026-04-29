(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001111 #b01010001111001100000000)))
;; x should be Float32(0x47A8F300 [Rational(86502), 86502.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 86502

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000010101000111100110))
;; z should be 86502

(assert (not (= y z)))
(check-sat)
(exit)
