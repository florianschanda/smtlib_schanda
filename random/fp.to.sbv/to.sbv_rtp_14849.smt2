(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AEBF722)))
;; x should be Float32(0x4AEBF722 [Rational(7732113), 7732113.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 7732113

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011101011111101110010001))
;; z should be 7732113

(assert (= y z))
(check-sat)
(exit)
