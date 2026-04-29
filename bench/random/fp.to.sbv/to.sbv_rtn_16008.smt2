(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100010001100110100010)))
;; x should be Float32(0xCA9119A2 [Rational(-4754641), -4754641.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -4754641

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101101110111001100101111))
;; z should be -4754641

(assert (not (= y z)))
(check-sat)
(exit)
