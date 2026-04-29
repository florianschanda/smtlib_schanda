(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01011010111110101000100)))
;; x should be Float32(0x4AAD7D44 [Rational(5684898), 5684898.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 5684898

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010101101011111010100010))
;; z should be 5684898

(assert (= y z))
(check-sat)
(exit)
