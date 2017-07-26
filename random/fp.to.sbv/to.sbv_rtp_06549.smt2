(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -maxnormal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0111011011000000010000011011001010100100000101011011010011100101))
;; z should be 8556911527516812517

(assert (= y z))
(check-sat)
(exit)
