(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b10100000 #b00101010100010001001110)))
;; x should be Float32(0x5015444E [Rational(10017126400), 10017126400.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b00101000100010101010011011100011))
;; z should be 680175331

(assert (not (= y z)))
(check-sat)
(exit)
