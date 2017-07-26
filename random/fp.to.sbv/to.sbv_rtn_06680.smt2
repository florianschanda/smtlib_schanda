(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00100100101000100100010)))
;; x should be Float32(0x4A125122 [Rational(4794513, 2), 2397256.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 2397256

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001001001001010001001000))
;; z should be 2397256

(assert (not (= y z)))
(check-sat)
(exit)
