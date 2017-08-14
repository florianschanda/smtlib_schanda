(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AAD7D44)))
;; x should be Float32(0x4AAD7D44 [Rational(5684898), 5684898.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 5684898

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010101101011111010100010))
;; z should be 5684898

(assert (= y z))
(check-sat)
(exit)
