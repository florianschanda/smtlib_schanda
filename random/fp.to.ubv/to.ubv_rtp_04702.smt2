(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b11101110000111111011000)))
;; x should be Float32(0x49F70FD8 [Rational(2023931), 2023931.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b01111000))
;; z should be 120

(assert (= y z))
(check-sat)
(exit)
