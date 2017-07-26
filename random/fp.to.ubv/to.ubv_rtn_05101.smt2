(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010111 #b10001101101011011011000)))
;; x should be Float32(0x4BC6D6D8 [Rational(26062256), 26062256.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 26062256

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000001100011011010110110110000))
;; z should be 26062256

(assert (= y z))
(check-sat)
(exit)
