(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100010001100110100001)))
;; x should be Float32(0xCA9119A1 [Rational(-9509281, 2), -4754640.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -4754641

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101101110111001100101111))
;; z should be -4754641

(assert (not (= y z)))
(check-sat)
(exit)
