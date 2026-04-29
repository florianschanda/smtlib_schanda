(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49B9A854)))
;; x should be Float32(0x49B9A854 [Rational(3041813, 2), 1520906.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 1520906

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000101110011010100001010))
;; z should be 1520906

(assert (= y z))
(check-sat)
(exit)
