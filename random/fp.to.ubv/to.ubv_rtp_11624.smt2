(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11000001 #b00110111111011110111000)))
;; x should be Float32(0xE09BF7B8 [Rational(-89909229642126983168), -89909229642126983168.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b00001100))
;; z should be 12

(assert (= y z))
(check-sat)
(exit)
