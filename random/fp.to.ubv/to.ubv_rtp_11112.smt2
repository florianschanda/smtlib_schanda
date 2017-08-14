(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A26A510)))
;; x should be Float32(0x4A26A510 [Rational(2730308), 2730308.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be 2730308

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001010011010100101000100))
;; z should be 2730308

(assert (= y z))
(check-sat)
(exit)
