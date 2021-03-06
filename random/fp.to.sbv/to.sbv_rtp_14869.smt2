(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10101110011011010001001)))
;; x should be Float32(0x4AD73689 [Rational(14104201, 2), 7052100.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 7052101

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011010111001101101000101))
;; z should be 7052101

(assert (= y z))
(check-sat)
(exit)
