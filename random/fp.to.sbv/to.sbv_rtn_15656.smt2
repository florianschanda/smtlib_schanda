(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11010001011110000110000)))
;; x should be Float32(0x4AE8BC30 [Rational(7626264), 7626264.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 7626264

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011101000101111000011000))
;; z should be 7626264

(assert (not (= y z)))
(check-sat)
(exit)
