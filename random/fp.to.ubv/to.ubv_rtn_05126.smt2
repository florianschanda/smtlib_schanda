(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTN +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00001011100110100100010)))
;; x should be Float32(0x0005CD22 [Rational(190097, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 0

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
