(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10001011 #b01011111100001101010100)))
;; x should be Float32(0xC5AFC354 [Rational(-2879701, 512), -5624.416016])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -5625

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111111110101000000111))
;; z should be -5625

(assert (not (= y z)))
(check-sat)
(exit)
