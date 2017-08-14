(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b10001100 #b01001011111001111111011)))
;; x should be Float32(0x4625F3FB [Rational(10875899, 1024), 10620.995117])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b10110110))
;; z should be 182

(assert (not (= y z)))
(check-sat)
(exit)
