(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10000111 #b00010101110010111001011)))
;; x should be Float32(0xC38AE5CB [Rational(-9102795, 32768), -277.795258])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -277

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111011101011))
;; z should be -277

(assert (= y z))
(check-sat)
(exit)
