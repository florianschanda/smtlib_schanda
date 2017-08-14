(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10101001101100001111000)))
;; x should be Float32(0x4A54D878 [Rational(3487262), 3487262.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 3487262

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001101010011011000011110))
;; z should be 3487262

(assert (not (= y z)))
(check-sat)
(exit)
