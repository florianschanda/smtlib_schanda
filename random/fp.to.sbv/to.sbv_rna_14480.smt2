(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA0374E4)))
;; x should be Float32(0xCA0374E4 [Rational(-2153785), -2153785.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -2153785

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110111110010001011000111))
;; z should be -2153785

(assert (= y z))
(check-sat)
(exit)
