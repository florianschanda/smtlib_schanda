(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10110001 #b11110011101011101110000)))
;; x should be Float32(0xD8F9D770 [Rational(-2197629538664448), -2197629538664448.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -2197629538664448

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111000001100010100010010000000000000000000000000000000))
;; z should be -2197629538664448

(assert (not (= y z)))
(check-sat)
(exit)
