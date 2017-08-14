(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001100 #b01001011111010111111011)))
;; x should be Float32(0x4625F5FB [Rational(10876411, 1024), 10621.495117])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 10621

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000010100101111101))
;; z should be 10621

(assert (= y z))
(check-sat)
(exit)
