(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01110011010100001010000)))
;; x should be Float32(0x49B9A850 [Rational(1520906), 1520906.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 1520906

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000101110011010100001010))
;; z should be 1520906

(assert (= y z))
(check-sat)
(exit)
