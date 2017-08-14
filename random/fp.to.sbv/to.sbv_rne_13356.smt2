(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A0A6828)))
;; x should be Float32(0x4A0A6828 [Rational(2267658), 2267658.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 2267658

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001000101001101000001010))
;; z should be 2267658

(assert (= y z))
(check-sat)
(exit)
