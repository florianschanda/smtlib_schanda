(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10011111101000000001100)))
;; x should be Float32(0x4A4FD00C [Rational(3404803), 3404803.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 3404803

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001100111111010000000011))
;; z should be 3404803

(assert (not (= y z)))
(check-sat)
(exit)
