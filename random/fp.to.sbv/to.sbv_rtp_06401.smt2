(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00011011 #b11110111001010100100011)))
;; x should be Float32(0x0DFB9523 [Rational(16487715, 10633823966279326983230456482242756608), 0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000001))
;; z should be 1

(assert (= y z))
(check-sat)
(exit)
