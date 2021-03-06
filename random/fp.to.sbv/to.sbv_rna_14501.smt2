(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b00101011110101001110000)))
;; x should be Float32(0xC915EA70 [Rational(-614055), -614055.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -614055

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111101101010000101011001))
;; z should be -614055

(assert (not (= y z)))
(check-sat)
(exit)
