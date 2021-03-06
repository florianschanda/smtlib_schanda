(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01001111001110100000100)))
;; x should be Float32(0x4A279D04 [Rational(2746177), 2746177.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 2746177

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001010011110011101000001))
;; z should be 2746177

(assert (not (= y z)))
(check-sat)
(exit)
