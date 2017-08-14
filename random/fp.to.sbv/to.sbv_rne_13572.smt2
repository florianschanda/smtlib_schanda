(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +sbv_8_bound)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x42FD0000)))
;; x should be Float32(0x42FD0000 [Rational(253, 2), 126.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNE x)))
;; y should be 126

(declare-const z (_ BitVec 8))
(assert (= z #b01111110))
;; z should be 126

(assert (= y z))
(check-sat)
(exit)
