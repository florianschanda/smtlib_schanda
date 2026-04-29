(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100011001101111111001)))
;; x should be Float32(0xCAD19BF9 [Rational(-13736953, 2), -6868476.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -6868477

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100101110011001000000011))
;; z should be -6868477

(assert (not (= y z)))
(check-sat)
(exit)
