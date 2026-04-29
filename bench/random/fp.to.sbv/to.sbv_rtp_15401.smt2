(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10000111 #b00010100110010111001011)))
;; x should be Float32(0xC38A65CB [Rational(-9070027, 32768), -276.795258])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -276

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111111111111011101100))
;; z should be -276

(assert (= y z))
(check-sat)
(exit)
