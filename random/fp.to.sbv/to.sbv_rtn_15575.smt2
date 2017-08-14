(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A4BDD80)))
;; x should be Float32(0x4A4BDD80 [Rational(3340128), 3340128.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 3340128

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001100101111011101100000))
;; z should be 3340128

(assert (not (= y z)))
(check-sat)
(exit)
