(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x3F000005)))
;; x should be Float32(0x3F000005 [Rational(8388613, 16777216), 0.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 1

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000001))
;; z should be 1

(assert (= y z))
(check-sat)
(exit)
