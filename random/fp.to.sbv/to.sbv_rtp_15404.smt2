(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC38A65CB)))
;; x should be Float32(0xC38A65CB [Rational(-9070027, 32768), -276.795258])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -276

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111011101100))
;; z should be -276

(assert (= y z))
(check-sat)
(exit)
