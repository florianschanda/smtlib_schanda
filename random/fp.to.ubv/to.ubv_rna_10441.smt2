(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00000111011010000110010)))
;; x should be Float32(0x4A03B432 [Rational(4315673, 2), 2157836.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 2157837

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001000001110110100001101))
;; z should be 2157837

(assert (= y z))
(check-sat)
(exit)
