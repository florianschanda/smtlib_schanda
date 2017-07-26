(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x496F3390)))
;; x should be Float32(0x496F3390 [Rational(979769), 979769.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 979769

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000011101111001100111001))
;; z should be 979769

(assert (= y z))
(check-sat)
(exit)
