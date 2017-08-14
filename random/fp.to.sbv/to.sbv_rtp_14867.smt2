(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AD7368A)))
;; x should be Float32(0x4AD7368A [Rational(7052101), 7052101.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 7052101

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011010111001101101000101))
;; z should be 7052101

(assert (= y z))
(check-sat)
(exit)
