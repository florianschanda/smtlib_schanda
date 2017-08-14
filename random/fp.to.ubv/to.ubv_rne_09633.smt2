(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AEC54F2)))
;; x should be Float32(0x4AEC54F2 [Rational(7744121), 7744121.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 7744121

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011101100010101001111001))
;; z should be 7744121

(assert (= y z))
(check-sat)
(exit)
