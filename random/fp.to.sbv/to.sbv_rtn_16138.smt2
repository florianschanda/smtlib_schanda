(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00011111 #b11100110000110100001110)))
;; x should be Float32(0x8FF30D0E [Rational(-7964295, 332306998946228968225951765070086144), -0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111111111111))
;; z should be -1

(assert (not (= y z)))
(check-sat)
(exit)
