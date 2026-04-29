(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA0374E6)))
;; x should be Float32(0xCA0374E6 [Rational(-4307571, 2), -2153785.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -2153786

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110111110010001011000110))
;; z should be -2153786

(assert (= y z))
(check-sat)
(exit)
